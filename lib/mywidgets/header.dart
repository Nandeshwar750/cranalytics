import 'package:cranalytics/config/constants.dart';
import 'package:cranalytics/controllers/menuappcontroller.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});
  static const userName = "Nandesh";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      color: Colors.amber,
      // decoration: const BoxDecoration(
      //   //borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   //border: Border.all(color: const Color.fromARGB(26, 61, 56, 56)),
      // ),
      child: Row(
        
        children: [
          if (!ResponsiveUtil.isDesktop(context))
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: context.read<MenuAppController>().controlMenu,
            ),
          if (!ResponsiveUtil.isMobile(context))
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: const Text("Welcome $userName",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
            ),
          if (!ResponsiveUtil.isMobile(context))
            Spacer(flex: 1),//ResponsiveUtil.isDesktop(context) ? 2 : 1),
          Expanded(
              child: IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )),
          ProfileCard(),
        ],
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      // decoration: BoxDecoration(
      //   color: secondaryColor,
      //   borderRadius: const BorderRadius.all(Radius.circular(10)),
      //   border: Border.all(color: Colors.white10),
      // ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32.0, // Adjust the radius as needed
            backgroundColor: Colors.blue, // Specify the background color
            child: Icon(
              Icons.person,
              size: 40.0, // Adjust the icon size as needed
              color: Colors.white, // Specify the icon color
            ),
          ),
          if (!ResponsiveUtil.isMobile(context))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5 / 2),
              child: Text(Header.userName),
            ),
          Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.all(defaultPadding * 0.75),
            margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}

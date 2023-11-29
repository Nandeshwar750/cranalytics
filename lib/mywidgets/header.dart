import 'package:cranalytics/config/constants.dart';
import 'package:cranalytics/controllers/menuappcontroller.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class Header extends StatelessWidget {
  String userName = "Dev";

  Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!ResponsiveUtil.isDesktop(context))
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: context.read<MenuAppController>().controlMenu,
          ),
        if (!ResponsiveUtil.isMobile(context))
          Text(
            "Welcome, $userName",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        if (!ResponsiveUtil.isMobile(context))
          Spacer(flex: ResponsiveUtil.isDesktop(context) ? 2 : 1),
        const Expanded(child: SearchField()),
        const ProfileCard()
      ],
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Stack(
            fit: StackFit.expand,
            children: <Widget>[
              // Background Image
              Image.network(
                'https://via.placeholder.com/500x500', // Replace with your background image URL
                fit: BoxFit.cover,
              ),
              // Foreground Image or Widget
              Center(
                child: Image.network(
                  'https://via.placeholder.com/200x200', // Replace with your foreground image URL
                  width: 150,
                  height: 150,
                ),
              ),
              // You can add other widgets on top as needed
              // For example, Text, Positioned, Container, etc.
              const Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  'Foreground Text',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          // Image.asset(
          //   "assets/images/profile_pic.png",
          //   height: 38,
          // ),
          if (!ResponsiveUtil.isMobile(context))
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              child: const Text("Admin"),
            ),
          const Icon(Icons.keyboard_arrow_down),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
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
            child: Image.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}

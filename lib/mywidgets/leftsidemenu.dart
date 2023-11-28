import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Text(
                  "Crayon Analytics",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.red,
                  ),
                  softWrap: true,
                ),
                SizedBox(
                    height: 10), // Adding some vertical space between texts
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 16), // Adding horizontal padding
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(10), // Set borderRadius here
                    child: Container(
                      color: Colors.blue, // Color for the background
                      padding: EdgeInsets.all(
                          8), // Padding for the text inside the container
                      child: Text(
                        "Dashboard",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // DrawerHeader(
          //   child: Column(
          //     children: [
          //       const Text(
          //         "Crayon Analytics",
          //         style: TextStyle(
          //           fontSize: 24.0,
          //           fontWeight: FontWeight.w400,
          //           color: Colors.red,
          //         ),
          //         softWrap: true,
          //       ),
          //       const SizedBox(height: 20),
          //       Container(
          //         width:
          //             60, // Adjust the width and height as needed to create a square
          //         height: 20,

          //         color: Colors.white, // Color for the square background
          //         alignment: Alignment.center,

          //         child: const Text(
          //           "Dashboard",
          //           style: TextStyle(
          //             fontSize: 18.0,
          //             fontWeight: FontWeight.bold,
          //             color: Colors.black12,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          DrawerListTile(
            title: "Management",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Products",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Sales",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Partners",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Revenue",
            svgSrc: "",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Profile",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}

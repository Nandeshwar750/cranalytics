import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
            padding: const EdgeInsets.all(20),
      child: Drawer(
        child: ListView(
          
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Crayon\nAnalytics",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.red,
                      ),
                      softWrap: true,
                    ),
                  ),
                  const SizedBox(
                      height: 30), // Adding some vertical space between texts
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5), // Adding horizontal padding
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(10), // Set borderRadius here
                      child: Container(
                        height: 50,
                        color: Colors.green, // Color for the background
                        child: const Center(
                          child: Text(
                            "Dashboard",
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
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
            // DrawerListTile(
            //   title: "Management",
            //   svgSrc: "",
            //   press: () {},
            //   //color: Colors.red;
            // ),
            const Padding(
              padding: EdgeInsets.only(left:20.0),
              child: Text(
                "Management",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0              ),
              ),
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
            const Divider(
              height: 2,
              thickness: 2,
              indent: 50,
              color: Colors.red,
            ),
            DrawerListTile(
              title: "Resources",
              svgSrc: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Asset Allocation",
              svgSrc: "",
              press: () {},
            ),
            DrawerListTile(
              title: "HR Analyst",
              svgSrc: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Wastage",
              svgSrc: "",
              press: () {},
            ),
            const Divider(
              height: 2,
              thickness: 2,
              indent: 50,
              color: Colors.red,
            ),
            DrawerListTile(
              title: "Connections",
              svgSrc: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Customers",
              svgSrc: "",
              press: () {},
            ),
            DrawerListTile(
              title: "Suppliers",
              svgSrc: "",
              press: () {},
            ),
          ],
        ),
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
        colorFilter: const ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftSideMenu extends StatelessWidget {
  const LeftSideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(196, 223, 223, 1),
      padding: const EdgeInsets.all(20),
      child: Drawer(
        backgroundColor: Color.fromARGB(255, 199, 228, 228),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  //const Center(
                  //child:

                  const Text(
                    "Crayon\nAnalytics",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.red,
                      //textAlign: TextAlign.center,
                    ),
                    textAlign: TextAlign.center,
                    //softWrap: true,
                  ),
                  // ),
                  const SizedBox(height: 20),
                  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: 40,
                          color: const Color.fromRGBO(248, 246, 244, 1),
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
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                "Management",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
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
              height: 4,
              thickness: 2,
              indent: 36,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 10, 0, 10),
              child: Text(
                "Resources",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
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
              
              height: 4,
              thickness: 2,
              indent: 36,
              color: Colors.red,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(28, 10, 0, 10),//padding: EdgeInsets.only(left: 36),
              child: Text(
                "Connections",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0,
                ),
              ),
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
        style: const TextStyle(color: Colors.black, fontSize: 14),
      ),
    );
  }
}

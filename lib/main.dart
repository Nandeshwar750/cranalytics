import 'package:cranalytics/mywidgets/leftsidemenu.dart';
import 'package:cranalytics/mywidgets/menuappcontroller.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crayon Analytics',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(24, 87, 87, 15)
      ),
      home: MultiProvider(
        providers: [
           ChangeNotifierProvider(
            create: (context) => MenuAppController(),
          ),
        ],
        child: const MainScreen(),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuAppController>().scaffoldKey,
      drawer: const LeftSideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (ResponsiveUtil.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: LeftSideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: Container(
                constraints: const BoxConstraints.expand(), // Expand to fill the available space
                color: Colors.blue, // Background color of the container
            child: const Center(
              child: Text(
                'Area for dashboard components.',
                style: TextStyle(color: Colors.white),
              ),
              ),
              ),
              //MainDashboardArea(),
            ),
          ],
        ),
      ),
    );
  }
}


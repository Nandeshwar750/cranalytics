import 'package:cranalytics/mywidgets/dashboard_screen.dart';
import 'package:cranalytics/mywidgets/leftsidemenu.dart';
import 'package:cranalytics/controllers/menuappcontroller.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Crayon Analytics',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: Colors.blue,// const Color.fromARGB(24, 87, 87, 15)
        //textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.green),
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
      drawer: const LeftSideMenu(), //Drawer menu
      body: SafeArea(//Safe visibility
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (ResponsiveUtil.isDesktop(context))
              const Expanded(
                // default flex = 1
                // left side menu for desktop size screens
                child: LeftSideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
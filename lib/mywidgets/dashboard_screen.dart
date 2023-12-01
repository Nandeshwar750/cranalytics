import 'package:cranalytics/mywidgets/dash_profits.dart';
import 'package:cranalytics/mywidgets/dash_quantity.dart';
import 'package:cranalytics/mywidgets/dash_sales.dart';
import 'package:cranalytics/mywidgets/header.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //bool isMobile = ResponsiveUtil.isMobile(context);

    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //First Row
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.red,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.green,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.orange,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 500,
                            color: Colors.blue,
                          ),
                        )
                      ],
                    ),
                    //Second Row
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.red,
                          ),
                        ),
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    //third row
                    Row(
                      children: [
                        Flexible(
                          child: Container(
                            height: 100,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
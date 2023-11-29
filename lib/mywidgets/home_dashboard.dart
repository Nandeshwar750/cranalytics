import 'package:cranalytics/mywidgets/header.dart';
import 'package:flutter/material.dart';

class HomeDashboard extends StatelessWidget {
   HomeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: 10),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                     Text("data using flex 5"),
                     Text("data using flex 5"),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

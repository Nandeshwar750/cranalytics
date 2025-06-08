import 'package:cranalytics/mywidgets/dash_profits.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //bool isMobile = ResponsiveUtil.isMobile(context);

    return const SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            //Header(),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ProfitsDash(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ProfitsDash(),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      ProfitsDash(),
                    ],
                  ),
                ),
                Column(children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        ProfitsDash(),
                      ],
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ),
    );
  }
}
// class HomeDashboard extends StatelessWidget {
//    HomeDashboard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SingleChildScrollView(
//         primary: false,
//         padding: const EdgeInsets.all(5),
//         child: Column(
//           children: [
//             // The space above the dashboard area
//             Header(),
//             const SizedBox(height: 10),
//             const Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   flex: 5,
//                   child: Column(
//                     children: [
//                      Text("data using flex 5"),
//                      Text("data using flex 5"),
//                     ],
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

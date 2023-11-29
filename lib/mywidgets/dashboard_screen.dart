import 'package:cranalytics/mywidgets/dash_profits.dart';
import 'package:cranalytics/mywidgets/dash_quantity.dart';
import 'package:cranalytics/mywidgets/dash_sales.dart';
import 'package:cranalytics/mywidgets/header.dart';
import 'package:cranalytics/utils/responsiveutil.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
           // Header(),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              // children: [
              //   Expanded(
              //     flex: 5,
              //     child: Column(
              //       children: [
              //         const SalesDash(),
              //         const SizedBox(height: 5),
              //         const QuantityDash(),
              //         if (ResponsiveUtil.isMobile(context))
              //           const SizedBox(height: 5),
              //         if (ResponsiveUtil.isMobile(context)) const ProfitsDash(),
              //       ],
              //     ),
              //   ),
              //   if (!ResponsiveUtil.isMobile(context))
              //     const SizedBox(width: 5),
              //   // On Mobile means if the screen is less than 850 we don't want to show it
              //   if (!ResponsiveUtil.isMobile(context))
              //     const Expanded(
              //       flex: 2,
              //       child: ProfitsDash(),
              //     ),
              // ],
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

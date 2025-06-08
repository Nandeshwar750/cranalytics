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
<<<<<<< HEAD
            //Header(),
            SizedBox(height: 5),
            Row(
=======
            Header(),
            const SizedBox(height: 5),
            const Row(
>>>>>>> 6a2e68e2fddf21fe9fe4501bead5207754221b51
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [],
            ),
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

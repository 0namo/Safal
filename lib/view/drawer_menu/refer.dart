// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import '../../const.dart';
// import '../homepage.dart';

// class ReferPage extends StatefulWidget {
//   const ReferPage({Key? key}) : super(key: key);

//   @override
//   _ReferPageState createState() => _ReferPageState();
// }

// class _ReferPageState extends State<ReferPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Referral'),
//         centerTitle: true,
//         backgroundColor: primaryColor,
//         elevation: 0,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Refer Page'),
//             ElevatedButton(
//               onPressed: () {
//                 Get.off(() => HomePage(),
//                     transition: Transition.leftToRight,
//                     duration: Duration(milliseconds: 1000));
//               },
//               child: Text('press me'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

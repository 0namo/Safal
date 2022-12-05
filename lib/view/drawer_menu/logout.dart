import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:safal/view/splashPage.dart';

import '../../const.dart';

class LogoutPage extends StatefulWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  _LogoutPageState createState() => _LogoutPageState();
}

class _LogoutPageState extends State<LogoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Logout'),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('LogOut Page'),
            // ElevatedButton(
            //   onPressed: () {
            //     Get.off(() => SplashScreenPage(),
            //         transition: Transition.leftToRight,
            //         duration: Duration(milliseconds: 1000));
            //   },
            //   child: Wrap(children: [
            //     Text(
            //         'make snackbar dialog box to ask really want to exit aND send to splashscreenpage'),
            //   ]),
            // ),
          ],
        ),
      ),
    );
  }
}

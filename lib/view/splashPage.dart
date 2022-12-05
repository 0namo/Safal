import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:safal/view/homepage.dart';
import 'package:safal/view/registerPage.dart';

import '../const.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  checkAuth() {
    Future.delayed(Duration(seconds: 5), () {
      Get.off(() => RegisterPage());
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkAuth();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff05014A),
      appBar: AppBar(
        // backgroundColor: new Color(0xff05014A),
        backgroundColor: new Color(0xffffffff),

        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              Get.off(() => HomePage());
            },
            child: Text(
              'skip',
              style: TextStyle(color: textcolor),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/logo.png'),
                  Text(
                    "Welcome to LMS App",
                    // style: TextStyle(color: Color(0xff005C98)),
                    textScaleFactor: 2,
                  ),
                  LoadingAnimationWidget.flickr(
                    leftDotColor: Colors.red,
                    rightDotColor: Colors.blue,
                    size: 60,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

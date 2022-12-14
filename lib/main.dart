import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:safal/const.dart';
import 'package:safal/view/category.dart';
import 'package:safal/view/homepage.dart';
import 'package:safal/view/profile/editprofilepage.dart';
import 'package:safal/view/profile/profilepage.dart';
import 'package:safal/view/profile/referals.dart';
import 'package:safal/view/profile/subscription.dart';
import 'package:safal/view/splashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Lms Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: null,
        appBarTheme: AppBarTheme(
          // iconTheme: IconThemeData(color: ),
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: primaryColor,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
      ),
      home: CategoryPage(),
    );
  }
}


// colorpallete

// 0xff05014A
// 0xff003277
// 0xff005C98
// 0xff0086AC
// 0xff00B0B8
// 0xff6ED9C2
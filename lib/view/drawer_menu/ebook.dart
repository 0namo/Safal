import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';
import '../homepage.dart';

class EBookPage extends StatefulWidget {
  const EBookPage({Key? key}) : super(key: key);

  @override
  _EBookPageState createState() => _EBookPageState();
}

class _EBookPageState extends State<EBookPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('E-Book'),
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              // notification code
              // Get.off(() => RegisterPage(),
              //     transition: Transition.rightToLeft,
              //     duration: Duration(milliseconds: 800));
              // print('notification pressed');
            },
            tooltip: 'Notification',
            icon: Icon(Icons.notification_add),
          ),
          IconButton(
            onPressed: () {
              // Get.to(() => UserProfilePage(),
              //     transition: Transition.rightToLeft,
              //     duration: Duration(milliseconds: 800));
            },
            icon: Image.asset(
              'images/profile.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('EBook Page'),
            ElevatedButton(
              onPressed: () {
                Get.off(() => HomePage(),
                    transition: Transition.leftToRight,
                    duration: Duration(milliseconds: 1000));
              },
              child: Text('press me'),
            ),
          ],
        ),
      ),
    );
  }
}

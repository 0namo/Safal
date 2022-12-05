import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/const.dart';
import 'package:safal/view/homepage.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                    // color: Colors.yellow,
                    ),
                child: Column(
                  children: [
                    Image.asset(
                      'images/profile.png',
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      'Leo Messi',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Student ID: 12345',
                      // style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(25),
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              decoration: BoxDecoration(
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                // ),

                // color: Colors.amber,
                borderRadius: BorderRadius.circular(10),
                // boxShadow: [
                //   BoxShadow(
                //       offset: Offset(0, 0),
                //       blurRadius: 20,
                //       color: Colors.black,
                //       spreadRadius: 10),
                // ],
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 320,
                    margin: EdgeInsets.only(
                      left: 0,
                      right: 0,
                    ),
                    // height: 54,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.black,
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                      ),
                      onPressed: () {
                        // register code
                        Get.off(
                          () => HomePage(),
                          transition: Transition.fadeIn,
                          duration: Duration(seconds: 3),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.edit),
                          SizedBox(
                            width: 20,
                          ),
                          Center(
                            child: Text(
                              'edit your profile',
                              style: TextStyle(fontSize: 15, letterSpacing: 1),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.keyboard_arrow_right_sharp),
                        ],
                      ),
                    ),
                  ),
                  Divide(),
                  Row(
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                        label: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'edit your profile',
                              style: TextStyle(fontSize: 15, letterSpacing: 1),
                            ),
                            // Spacer(),
                            SizedBox(
                              width: 80,
                            ),
                            Icon(Icons.keyboard_arrow_right_sharp),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divide(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

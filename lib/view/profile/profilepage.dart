import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/const.dart';
import 'package:safal/view/auth/loginPage.dart';
import 'package:safal/view/homepage.dart';
import 'package:safal/view/templates/appbar_template.dart';

import '../templates/profile_Template.dart';
import 'editprofilepage.dart';
import 'referals.dart';
import 'subscription.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  bool isSeected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod('My Profile'),
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
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    blurRadius: 1,
                    color: Colors.grey,
                    // spreadRadius:
                  ),
                ],
              ),
              child: Column(
                children: [
                  // Container(
                  //   decoration: BoxDecoration(color: Colors.green),
                  //   child: GestureDetector(
                  //     onTap: () {
                  //       Get.to(() => HomePage(),
                  //           transition: Transition.rightToLeft,
                  //           duration: Duration(milliseconds: 800));
                  //     },
                  //     child: Wrap(
                  //       children: [
                  //         ListTile(
                  //           leading: Icon(Icons.edit),
                  //           title: Text('edit your profile'),
                  //           trailing: Icon(
                  //             Icons.toggle_off,
                  //             size: 35,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  ProfileWidget(Icons.edit, 'Edit Profile', EditProfilePage(),
                      Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  ProfileWidget(Icons.trending_up, 'My Subscription',
                      MySubscription(), Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  ProfileWidget(Icons.sync_alt, 'Referals', MyReferals(),
                      Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  GestureDetector(
                    onTap: () {
                      // Get.to(() => HomePage(),
                      //     transition: Transition.rightToLeft,
                      //     duration: Duration(milliseconds: 800));
                    },
                    child: Wrap(
                      children: [
                        ListTile(
                          horizontalTitleGap: 5,
                          leading: Icon(
                            Icons.notification_add,
                            size: 30,
                          ),
                          title: Text('Notifications',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          trailing: Switch(
                            value: isSeected,
                            activeColor: Colors.green,
                            onChanged: (value) {
                              isSeected = value;
                              setState(() {
                                
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divide(),
                  GestureDetector(
                    onTap: () {
                      //   Get.to(() => HomePage(),
                      //       transition: Transition.rightToLeft,
                      //       duration: Duration(milliseconds: 800));
                      Get.defaultDialog(
                        confirm: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red),
                          child: Text(
                            'Confirm',
                            // style: TextStyle(color: Colors.green),
                          ),
                          onPressed: () {
                            Get.offAll(() => LoginPage());
                          },
                        ),
                        cancel: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green),
                          child: Text(
                            'Cancel',
                            // style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Get.back();
                          },
                        ),
                        title: 'Do you want to Logout ?',
                        middleText: '',
                        confirmTextColor: Colors.amber,
                        cancelTextColor: Colors.red,
                      );
                    },
                    child: Wrap(
                      children: [
                        ListTile(
                          horizontalTitleGap: 5,
                          leading: Icon(
                            Icons.logout,
                            size: 30,
                          ),
                          title: Text('LogOut',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500)),
                          trailing: Icon(
                            Icons.keyboard_arrow_right_sharp,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
                  color: Colors.yellow,
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
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),

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
                  //           trailing: Icon(Icons.keyboard_arrow_right_sharp),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Profile_Widget(Icons.edit, 'Edit Profile', HomePage(),
                      Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  Profile_Widget(Icons.edit, 'My Subscription', HomePage(),
                      Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  Profile_Widget(Icons.import_export, 'Referals', HomePage(),
                      Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  Profile_Widget(Icons.notification_add, 'Notifications',
                      HomePage(), Icons.keyboard_arrow_right_sharp),
                  Divide(),
                  Profile_Widget(Icons.logout, 'Log Out', HomePage(),
                      Icons.keyboard_arrow_right_sharp),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile_Widget extends StatelessWidget {
  final IconData profile_icon;
  final String profile_txt;
  final Widget profile_call;
  final IconData profile_trailing_icon;

  Profile_Widget(
    this.profile_icon,
    this.profile_txt,
    this.profile_call,
    this.profile_trailing_icon,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => profile_call,
            transition: Transition.rightToLeft,
            duration: Duration(milliseconds: 800));
      },
      child: Wrap(
        children: [
          ListTile(
            horizontalTitleGap: 5,
            leading: Icon(profile_icon),
            title: Text(profile_txt),
            trailing: Icon(profile_trailing_icon),
          ),
        ],
      ),
    );
  }
}

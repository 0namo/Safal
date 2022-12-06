import 'package:flutter/material.dart';
import 'package:safal/const.dart';
import 'package:safal/view/templates/appbar_template.dart';

import '../templates/referralspage.dart';

class ReferalsPage extends StatelessWidget {
  const ReferalsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod('My Referals'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 160,
              // alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 40),
              decoration: BoxDecoration(
                color: primaryColor,
              ),
              child: Row(
                // alignment: WrapAlignment.start,
                // verticalDirection: VerticalDirection.down,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 60,
                        height: 80,
                      ),
                      Text(
                        'Refer',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'A friend',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 60,
                        height: 80,
                      ),
                      Text(
                        'Rs. 10 on',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Joining',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40.0),
                    child: Icon(
                      Icons.arrow_forward_sharp,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/logo.png',
                        width: 60,
                        height: 80,
                      ),
                      Text(
                        'Rs.50 on',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        'Enrollment',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(30),
              padding:
                  EdgeInsets.only(top: 20, left: 10, right: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 0),
                    spreadRadius: 1.3,
                    color: primaryColor,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hemant Karki',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        // wordSpacing: 1,
                        // letterSpacing: 1,
                        fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Current Balance :',
                        style: TextStyle(fontSize: 13),
                      ),
                      Spacer(),
                      Text('Rs. 550'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('REFERRAL CODE'),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 30),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: secondarycolor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Text('EaSOPORX998'),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Tap to copy',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            ReferralsWidget('images/profile.png', '3', 'Total Users'),
            ReferralsWidget('images/profile.png', '3', 'Total Enrolled'),
            ReferralsWidget('images/profile.png', 'Rs. 500', 'Total Earned'),
          ],
        ),
      ),
    );
  }
}

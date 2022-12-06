import 'package:flutter/material.dart';
import 'package:safal/const.dart';
import 'package:safal/view/templates/appbar_template.dart';
import 'package:safal/view/templates/subscribedpage.dart';

import '../templates/referralspage.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod('My Subscription'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Text(
              'Subscribed Courses',
              style: TextStyle(
                  color: secondarycolor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SubscribeWidget(Icons.school, 'Total Subscribed Courses', '5'),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileWidget extends StatelessWidget {
  final IconData profile_icon;
  final String profile_txt;
  final Widget profile_call;
  final IconData profile_trailing_icon;

  ProfileWidget(
    this.profile_icon,
    this.profile_txt,
    this.profile_call,
    this.profile_trailing_icon,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => profile_call,

          // transition: Transition.rightToLeft,
          // duration: Duration(milliseconds: 800)
        );
      },
      child: Wrap(
        children: [
          ListTile(
            horizontalTitleGap: 5,
            leading: Icon(
              profile_icon,
              size: 30,
            ),
            title: Text(
              profile_txt,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            trailing: Icon(
              profile_trailing_icon,
              size: 25,
            ),
          ),
        ],
      ),
    );
  }
}

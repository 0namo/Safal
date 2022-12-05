import 'package:flutter/material.dart';
import 'package:safal/view/templates/appbar_template.dart';

import '../../const.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod('Edit Profile'),
      body: Column(
        children: [
          Center(
            child: Stack(
              fit: StackFit.loose,
              // alignment: AlignmentDirectional.topStart,
              children: [
                IconButton(
                  onPressed: (() {}),
                  icon: Icon(Icons.camera_alt_outlined),
                ),
                Image.asset(
                  'images/profile.png',
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

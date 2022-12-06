import 'package:flutter/material.dart';
import 'package:safal/view/templates/appbar_template.dart';
import 'package:safal/view/templates/register_form_field.dart';

import '../../const.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      appBar: AppBarMethod('Edit Profile'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                // alignment: Alignment.center,
                height: 200,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(150)),
                child: Center(
                  child: Stack(
                    children: [
                      Image.asset(
                        'images/profile.png',
                        fit: BoxFit.cover,
                        width: 150,
                        height: 150,
                      ),
                      Positioned(
                        top: 110,
                        left: 105,
                        child: CircleAvatar(
                          backgroundColor: primaryColor,
                          child: Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InfoText('Name'),
            RegisterFormField(
              Icons.edit,
              'enter name',
            ),
            SIZED_BOX20,
            InfoText('Email'),
            RegisterFormField(Icons.edit, 'enter email',
                keyboardInputType: TextInputType.emailAddress),
            SizedBox(
              height: 20,
            ),
            InfoText('Phone'),
            RegisterFormField(Icons.edit, 'enter phone',
                keyboardInputType: TextInputType.phone),
            SizedBox(
              height: 20,
            ),
            InfoText('Old Password '),
            RegisterFormField(Icons.edit, 'enter old password',
                keyboardInputType: TextInputType.visiblePassword),
            SizedBox(
              height: 20,
            ),
            InfoText('New Password'),
            RegisterFormField(Icons.edit, 'enter new password',
                keyboardInputType: TextInputType.visiblePassword),
            SizedBox(
              height: 10,
            ),
            FormBtn('Update', onPressed: () {
              print('object');
            })
          ],
        ),
      ),
    );
  }
}

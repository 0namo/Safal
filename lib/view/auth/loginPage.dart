import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/view/homepage.dart';

// import 'package:safal/notification_service.dart';
// import 'dart:html';

import '../../const.dart';
import '../templates/register_form_field.dart';
import 'registerPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
//   // NotificationServices services = new NotificationServices();
  @override
  Widget build(BuildContext context) {
//     // services.initilization();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('LOGIN'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogoForm(20),
          SizedBox(
            height: 50,
          ),
          InfoText('Email'),
          RegisterFormField(Icons.email, '    Enter Email',
              keyboardInputType: TextInputType.emailAddress),
          SizedBox(
            height: 20,
          ),
          InfoText('Password'),
          RegisterFormField(Icons.vpn_key, '    Enter Password',
              keyboardInputType: TextInputType.visiblePassword),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 35),
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                // Write Click Listener Code Here
              },
              child: Text(
                "Forget Password ?",
                style: TextStyle(
                    color: textcolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 13),
              ),
            ),
          ),
          FormBtn('Login', onPressed: () {
            Get.off(() => HomePage());
          }),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Need an Account ?  ",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                ),
                GestureDetector(
                  child: Text(
                    "Register Now",
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  onTap: () {
                    Get.off(() => RegisterPage(),
                        transition: Transition.leftToRight,
                        duration: Duration(milliseconds: 800));
                  },
                )
              ],
            ),
          ),
          // OrDivider(),
          // GoogleSignIn(),
          Spacer(),
          Center(
            // heightFactor: 9,
            child: Wrap(
              runSpacing: 2,
              children: [
                Text(
                  "By Signing up, you agree with Safal Course's ",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Terms.",
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "Learn How we process your data in our ",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';
import '../templates/register_form_field.dart';
import './loginpage.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGISTER'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LogoForm(20),
          SizedBox(
            height: 30,
          ),
          infoText('Full Name'),
          RegisterFormField(Icons.person, '    Enter Full Name'),
          SizedBox(
            height: 20,
          ),
          infoText('Email'),
          RegisterFormField(Icons.email, '    Enter Email'),
          SizedBox(
            height: 20,
          ),
          infoText('Phone Number'),
          RegisterFormField(Icons.phone, '    Enter Phone Number'),
          SizedBox(
            height: 20,
          ),
          infoText('Password'),
          RegisterFormField(Icons.vpn_key, '    Enter Password'),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40),
            height: 15,
            child: Row(
              children: [
                Checkbox(
                    value: isChecked,
                    activeColor: secondarycolor,
                    checkColor: Colors.white,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
                Text(
                  "I accept all ",
                ),
                GestureDetector(
                  child: Text(
                    "Terms & Conditions",
                    style: TextStyle(color: textcolor),
                  ),
                  onTap: () {
                    // terms and condition page
                  },
                ),
              ],
            ),
          ),
          FormBtn('Register', onPressed: () {
            print("registered clicked");
          }),
          // OrDivider(),
          // GoogleSignIn(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account ?  ",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                ),
                GestureDetector(
                  child: Text(
                    "Login Now",
                    style: TextStyle(
                        color: textcolor,
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                  onTap: () {
                    Get.off(
                      () => LoginPage(),
                      transition: Transition.rightToLeft,
                      duration: Duration(milliseconds: 800),
                    );
                  },
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding infoText(String info) {
    return Padding(
      padding: const EdgeInsets.only(left: 45),
      child: Text(
        '$info',
        style: TextStyle(
          fontSize: 15,
          color: primaryColor,
        ),
      ),
    );
  }
}

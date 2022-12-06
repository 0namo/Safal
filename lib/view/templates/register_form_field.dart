import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../const.dart';
import '../homepage.dart';

//form field

class RegisterFormField extends StatelessWidget {
  final IconData icon;
  final String hinttxt;
  final TextInputType? keyboardInputType ;
  RegisterFormField(this.icon, this.hinttxt, {this.keyboardInputType});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, top: 0),
      child: TextField(
        keyboardType: keyboardInputType,
        cursorColor: Color(0xff003277),
        decoration: InputDecoration(
          // contentPadding: EdgeInsets.zero,
          prefixIconConstraints: BoxConstraints(
            minWidth: 30,
            // minHeight: 0,
          ),
          prefixIcon: Icon(
            icon,
            color: Color(0xff003277),
          ),
          hintText: hinttxt,
        ),
      ),
    );
  }
}

//logo

class LogoForm extends StatelessWidget {
  final double marginValue;
  LogoForm(this.marginValue);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      margin: EdgeInsets.only(top: marginValue),
      child: Image.asset(
        "images/logo.png",
        height: 90,
        width: 90,
      ),
    );
  }
}

//form bottom
class FormBtn extends StatelessWidget {
  final String btntext;
  final Function onPressed;
  FormBtn(
    this.btntext, {
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 40, right: 40, top: 15),
      // height: 54,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            primaryColor,
            Color(0xff003277),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Color(0xffEEEEEE),
          ),
        ],
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        onPressed: () => onPressed(),
        child: Text(
          btntext,
          style: TextStyle(fontSize: 15, letterSpacing: 1),
        ),
      ),
    );
  }
}
//divider

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey,
              endIndent: 5,
              indent: 40,
            ),
          ),
          Text(
            'OR',
            style: TextStyle(fontWeight: FontWeight.w400, color: Colors.grey),
          ),
          Expanded(
            child: Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 5,
              endIndent: 40,
            ),
          ),
        ],
      ),
    );
  }
}

//GOOGLE sign in

class GoogleSignIn extends StatelessWidget {
  const GoogleSignIn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 15),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        onPressed: () {
          // google code
        },
        icon: SvgPicture.asset(
          "images/google.svg",
          width: 25,
          height: 25,
        ),
        label: Text(
          "Sign In With Google",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//register text

class InfoText extends StatelessWidget {
  final String infotxt;

  InfoText(this.infotxt);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 45),
      child: Text(
        infotxt,
        style: TextStyle(
          fontSize: 15,
          color: primaryColor,
        ),
      ),
    );
  }
}

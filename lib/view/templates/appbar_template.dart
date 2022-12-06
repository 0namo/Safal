import 'package:flutter/material.dart';

import '../../const.dart';

AppBar AppBarMethod(String appBarTxt) {
  return AppBar(
    backgroundColor: primaryColor,
    centerTitle: true,
    elevation: 0,
    title: Text(
      appBarTxt,
      style: TextStyle(),
    ),
  );
}

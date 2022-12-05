import 'package:flutter/material.dart';

import '../../const.dart';

AppBar AppBarMethod(String appBarTxt) {
  return AppBar(
    backgroundColor: primaryColor,
    centerTitle: true,
    title: Text(
      appBarTxt,
      style: TextStyle(),
    ),
  );
}

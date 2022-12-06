import 'package:flutter/material.dart';

class SubscribeWidget extends StatelessWidget {
  final IconData SubscribeIconName;
  final String textUpName;
  final String textDownName;
  SubscribeWidget(this.SubscribeIconName, this.textUpName, this.textDownName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 1),
            blurRadius: 2,
            spreadRadius: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(SubscribeIconName),
          Spacer(),
          Text(
            textUpName,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(
            textDownName,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
          )
        ],
      ),
    );
  }
}

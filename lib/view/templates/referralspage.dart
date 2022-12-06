import 'package:flutter/material.dart';

class ReferralsWidget extends StatelessWidget {
  final String imageName;
  final String textUpName;
  final String textDownName;
  ReferralsWidget(this.imageName, this.textUpName, this.textDownName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30, bottom: 20),
      padding: EdgeInsets.only(top: 10, left: 15, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 0.5,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageName,
            // 'images/profile.png'

            fit: BoxFit.cover,
            width: 60,
            height: 60,
          ),
          Padding(
            padding: EdgeInsets.only(left: 70, top: 5),
            child: Column(
              children: [
                Text(
                  textUpName,
                  // '3',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  // 'Total Users',
                  textDownName,

                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

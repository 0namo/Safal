import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/view/homepage.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({Key? key}) : super(key: key);

  @override
  _SchoolPageState createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('School Page'),
            ElevatedButton(
              onPressed: () {
                Get.off(() => HomePage(),
                    transition: Transition.leftToRight,
                    duration: Duration(milliseconds: 1000));
              },
              child: Text('press me'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/view/homepage.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Course page'),
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

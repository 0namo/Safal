import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const.dart';
import '../homepage.dart';

class AboutDeveloperPage extends StatefulWidget {
  const AboutDeveloperPage({Key? key}) : super(key: key);

  @override
  _AboutDeveloperPageState createState() => _AboutDeveloperPageState();
}

class _AboutDeveloperPageState extends State<AboutDeveloperPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Developer'),
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('About Developer page'),
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

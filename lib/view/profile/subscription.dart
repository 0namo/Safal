import 'package:flutter/material.dart';
import 'package:safal/view/templates/appbar_template.dart';

class MySubscription extends StatelessWidget {
  const MySubscription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMethod('My Subscription'),
      body: Column(
        children: [],
      ),
    );
  }
}

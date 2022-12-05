import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safal/view/homepage.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Favorite Page'),
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

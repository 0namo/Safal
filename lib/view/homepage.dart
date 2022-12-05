import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'package:safal/view/templates/drawer.dart';

import '../const.dart';
import 'auth/registerPage.dart';
import 'profile/profilepage.dart';
import 'bottomnavbar/homeview.dart';
import 'bottomnavbar/coursepage.dart';
import 'bottomnavbar/favoritepage.dart';
import 'bottomnavbar/schoolpage.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  final screens = [
    HomeView(),
    SchoolPage(),
    CoursePage(),
    FavoritePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        drawer: DrawerWidget(scaffoldKey: _scaffoldKey),
        appBar: AppBar(
          backgroundColor: primaryColor,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                print('notification pressed');
              },
              tooltip: 'Notification',
              icon: Icon(Icons.notification_add),
            ),
            IconButton(
              onPressed: () {
                Get.to(() => UserProfilePage());
              },
              icon: Image.asset(
                'images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
          selectedItemColor: secondarycolor,
          unselectedItemColor: Colors.white,
          currentIndex: _currentIndex,
          iconSize: 22,
          selectedFontSize: 16,
          unselectedLabelStyle: TextStyle(fontSize: 14),
          unselectedFontSize: 20,
          showUnselectedLabels: true,
          onTap: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'My Course',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorite',
            ),
          ],
        ),
        body: Center(
          child: screens[_currentIndex],
        ),
      ),
    );
  }
}

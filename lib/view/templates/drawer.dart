import 'package:get/get.dart';
import 'package:safal/view/splashPage.dart';

import '../../const.dart';
import '../drawer_menu/DrawerMenuTemplate.dart';
import 'package:flutter/material.dart';

import '../drawer_menu/aboutUs.dart';
import '../drawer_menu/ebook.dart';
import '../drawer_menu/help.dart';
import '../drawer_menu/logout.dart';
import '../drawer_menu/refer.dart';
import '../profile/profilepage.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
  })  : _scaffoldKey = scaffoldKey,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 0,
              left: 20,
              right: 20,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset(
                    'images/logo.png',
                    height: 50,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: (() {
                    _scaffoldKey.currentState?.closeDrawer();
                  }),
                  icon: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                SizedBox(
                  height: 0,
                ),
              ],
            ),
          ),
          // DrawerHeader(
          //   child: UserAccountsDrawerHeader(
          //     decoration: BoxDecoration(
          //       color: primaryColor,
          //     ),
          //     currentAccountPicture: IconButton(
          //       onPressed: (() {
          //         Get.to(() => UserProfilePage(),
          //             transition: Transition.rightToLeft,
          //             duration: Duration(milliseconds: 800));
          //       }),
          //       icon: Image.asset(
          //         'images/profile.png',
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     accountName: Text(
          //       'Leo Messi',
          //       style: TextStyle(
          //         fontSize: 15,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //     accountEmail: Text(
          //       'leo2022messi@gmail.com',
          //       style: TextStyle(
          //         fontWeight: FontWeight.w200,
          //       ),
          //     ),
          //     // onDetailsPressed: () {
          //     //   Get.to(() => UserProfilePage(),
          //     //       transition: Transition.leftToRight,
          //     //       duration: Duration(milliseconds: 800));
          //     // },
          //   ),
          // ),
          // Divider(
          //   thickness: 3,
          //   color: Colors.white,
          // ),
          // SizedBox(
          //   height: 0,
          // ),

          Spacer(
            flex: 1,
          ),
          DrawerListTileMenu(Icons.person, 'Ebook', EBookPage(), _scaffoldKey),
          // Divide(),
          DrawerListTileMenu(
              Icons.sync_alt, 'Referals', ReferPage(), _scaffoldKey),
          // direction of icon
          // Divide(),
          DrawerListTileMenu(Icons.info, 'About Developers',
              AboutDeveloperPage(), _scaffoldKey),
          // Divide(),
          DrawerListTileMenu(Icons.help, 'Help', HelpPage(), _scaffoldKey),
          // Divide(),
          DrawerListTileMenu(
              Icons.logout, 'Logout', SplashScreenPage(), _scaffoldKey),
          Spacer(
            flex: 3,
          ),
          Text(
            "v 1.0.2",
            style: TextStyle(
              color: Colors.white,
            ),
          ),

          // Divide(),
        ],
      ),
    );
  }
}

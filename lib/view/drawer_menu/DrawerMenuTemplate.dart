import 'package:flutter/material.dart';
import 'package:get/get.dart';

///drawer icon btn text

class DrawerListTileMenu extends StatelessWidget {
  final IconData Drawericon;
  final String drawertext;
  final Widget drawercall;
  final GlobalKey<ScaffoldState> _scaffoldKey;

  DrawerListTileMenu(
      this.Drawericon, this.drawertext, this.drawercall, this._scaffoldKey);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: ListTile(
        horizontalTitleGap: 20,
        leading: Icon(Drawericon, color: Colors.white),
        title: Text(
          drawertext,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () {
          Get.to(() => drawercall);
          _scaffoldKey.currentState?.closeDrawer();
        },
      ),
    );
  }
}

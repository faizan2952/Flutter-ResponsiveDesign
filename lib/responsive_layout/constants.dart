import 'package:flutter/material.dart';
import 'package:get/get.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.black,
);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.label_important)),
      ListTile(
        leading: Icon(Icons.home),
        title: Text("DASHBOARD"),
        onTap: () {
          Get.find<NavigationController>().selectIndex(0); // Change to screen 0
          // Navigator.pop(context); // Close the drawer
        },
      ),
      ListTile(
        leading: Icon(Icons.chat),
        title: Text("MESSAGE"),
        onTap: () {
          Get.find<NavigationController>().selectIndex(1); // Change to screen 1
          // Navigator.pop(context); // Close the drawer
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text("SETTINGS"),
        onTap: () {
          Get.find<NavigationController>().selectIndex(2); // Change to screen 2
          // Navigator.pop(context); // Close the drawer
        },
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("LOGOUT"),
        onTap: () {
          // Perform logout action here
          // Navigator.pop(context); // Close the drawer
        },
      ),
    ],
  ),
);

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void selectIndex(int index) {
    selectedIndex.value = index;
  }
}

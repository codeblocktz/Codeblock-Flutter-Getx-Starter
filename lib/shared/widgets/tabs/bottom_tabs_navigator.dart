import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/shared/controllers/app_controllers/app_controller.dart';

class BottomTabsNavigator extends GetWidget<AppController> {
  const BottomTabsNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => BottomNavyBar(
          selectedIndex: controller.tabIndex.value,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => controller.setTabIndex(index),
          items: [
            BottomNavyBarItem(
                icon: Icon(Icons.add),
                title: Text('Counter'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
              icon: Icon(Icons.apps),
              title: Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                activeColor: Colors.blue),
          ],
        ));
  }
}

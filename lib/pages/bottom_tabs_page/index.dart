import 'package:get/get.dart';
import 'package:starter/shared/widgets/tabs/bottom_tabs_navigator.dart';
import 'package:flutter/material.dart';
import 'package:starter/shared/widgets/tabs/tab_page_switcher.dart';

class BottomTabsPage extends StatelessWidget {
  const BottomTabsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabPageSwitcher(), bottomNavigationBar: BottomTabsNavigator());
  }
}

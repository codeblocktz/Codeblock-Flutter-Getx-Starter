import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/pages/bottom_tabs_page/tabs/counter_tab.dart';
import 'package:starter/pages/bottom_tabs_page/tabs/home_tab.dart';
import 'package:starter/pages/bottom_tabs_page/tabs/settings_tab.dart';
import 'package:starter/shared/controllers/app_controllers/app_controller.dart';

class TabPageSwitcher extends GetWidget<AppController> {
  final List<Widget> _tabPages = [CounterTab(), HomeTab(), SettingsTab()];
  TabPageSwitcher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => _tabPages[controller.tabIndex.value]);
  }
}

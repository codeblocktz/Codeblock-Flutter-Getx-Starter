import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/app_controller.dart';
import 'package:starter/pages/tabs/counter_tab.dart';
import 'package:starter/pages/tabs/home_tab.dart';
import 'package:starter/pages/tabs/settings_tab.dart';

class TabPageSwitcher extends GetWidget<AppController> {
  final List<Widget> _tabPages = [CounterTab(), HomeTab(), SettingsTab()];
  TabPageSwitcher({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => _tabPages[controller.tabIndex.value]);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/pages/bottom_tabs_page/controllers/counter_controller.dart';
import 'package:starter/theme/themeService.dart';

class ThemeSwitchButton extends GetWidget<CounterController> {
  const ThemeSwitchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "themeSwitchButton",
      onPressed: () => ThemeService().switchTheme(),
      tooltip: 'Switch theme',
      child: Icon(Icons.brightness_6),
    );
  }
}

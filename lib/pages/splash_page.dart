import 'package:starter/controllers/app_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetWidget<AppController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<AppController>(
      init: controller.initApp(),
      builder: (_) => Center(
        child: SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset('assets/icons/icon.png'),
          ),
          width: 100,
        ),
      ),
    ));
  }
}

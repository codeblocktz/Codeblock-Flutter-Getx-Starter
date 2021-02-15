import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/app_controller.dart';

class TranslateButton extends GetWidget<AppController> {
  const TranslateButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "translateButton",
      backgroundColor: Colors.red,
      onPressed: () => controller.changeLanguageModal(),
      tooltip: 'Change Language',
      child: Icon(Icons.translate),
    );
  }
}

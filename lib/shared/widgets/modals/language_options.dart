
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flag/flag.dart';
import 'package:starter/shared/controllers/app_controllers/app_controller.dart';

class LanguageOptionsWidget extends GetWidget<AppController> {
  const LanguageOptionsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Wrap(
        children: [
          ListTile(
            leading: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Flag('US', height: 36, width: 36, fit: BoxFit.fill)),
            ),
            title: Text('english'.tr),
            onTap: () => controller.updateLocale(Locale('en', 'US')),
          ),
          ListTile(
            leading: Container(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Flag('TZ', height: 36, width: 36, fit: BoxFit.fill)),
            ),
            title: Text('swahili'.tr),
            onTap: () => controller.updateLocale(Locale('sw', 'TZ')),
          )
        ],
      ),
    );
  }
}

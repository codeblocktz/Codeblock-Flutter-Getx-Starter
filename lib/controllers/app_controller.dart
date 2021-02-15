import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/models/count.dart';
import 'package:starter/widgets/modals/language_options.dart';

class AppController extends GetxController {
  final count = Count(number: 0).obs;
  final isBusy = false.obs;

  final tabIndex = 0.obs;

  setTabIndex(int value) {
    tabIndex(value);
  }

  setIsBusy(bool value) {
    isBusy(value);
  }

  initApp() {
    setIsBusy(true);
    Future.delayed(Duration(seconds: 3), () {
      initLocale();
      Get.offNamed('bottom_tabs_page');
    });
    setIsBusy(false);
  }

  initLocale() {
    GetStorage box = GetStorage();
    if (box.read('locale') != null)
      box.read('locale') == 'sw_TZ'
          ? Get.updateLocale(Locale('sw', 'TZ'))
          : Get.updateLocale(Locale('en', 'US'));
  }

  changeLanguageModal() {
    Get.bottomSheet(LanguageOptionsWidget());
  }

  updateLocale(Locale locale) {
    print('${locale.languageCode}_${locale.countryCode}');
    GetStorage box = GetStorage();
    box.write('locale', '${locale.languageCode}_${locale.countryCode}');
    Get.updateLocale(locale);
    Get.back();
  }
}

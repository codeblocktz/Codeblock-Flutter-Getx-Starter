import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:starter/locale/app_translation.dart';
import 'package:starter/router/router.dart';
import 'package:starter/theme/theme.dart';
import 'package:starter/theme/themeService.dart';

void main() {
  GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        navigatorKey: Get.key,
        translations: AppTranslations(),
        locale: Get.deviceLocale,
        debugShowCheckedModeBanner: false,
        title: 'GetX Demo',
        theme: Themes().lightTheme,
        darkTheme: Themes().darkTheme,
        themeMode: ThemeService().theme,
        initialRoute: '/',
        getPages: AppRouter.routes);
  }
}

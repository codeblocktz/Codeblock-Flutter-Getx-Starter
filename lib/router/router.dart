import 'package:get/get.dart';
import 'package:starter/controllers/bingings/app_binding.dart';
import 'package:starter/controllers/bingings/counter_binding.dart';
import 'package:starter/pages/static/bottom_tabs_page.dart';
import 'package:starter/pages/static/splash_page.dart';

class AppRouter {
  static var routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: AppBinding(),
    ),
    GetPage(
      name: 'bottom_tabs_page',
      page: () => BottomTabsPage(),
      bindings: [CounterBinding(), AppBinding()],
    ),
  ];
}

import 'package:get/get.dart';
import 'package:starter/controllers/bingings/app_binding.dart';
import 'package:starter/controllers/bingings/change_password_binding.dart';
import 'package:starter/controllers/bingings/counter_binding.dart';
import 'package:starter/controllers/bingings/otp_binding.dart';
import 'package:starter/controllers/bingings/reset_password_binding.dart';
import 'package:starter/controllers/bingings/signin_binding.dart';
import 'package:starter/controllers/bingings/signup_binding.dart';
import 'package:starter/pages/static/bottom_tabs_page.dart';
import 'package:starter/pages/static/change_password_page.dart';
import 'package:starter/pages/static/otp_page.dart';
import 'package:starter/pages/static/reset_password_page.dart';
import 'package:starter/pages/static/signin_page.dart';
import 'package:starter/pages/static/signup_page.dart';
import 'package:starter/pages/static/splash_page.dart';

class AppRouter {
  static var routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: AppBinding(),
    ),
    GetPage(
      name: 'signin',
      page: () => SigninPage(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: 'signup',
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: 'reset_password',
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: 'otp',
      page: () => OtpPage(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: 'change_password',
      page: () => ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: 'bottom_tabs_page',
      page: () => BottomTabsPage(),
      bindings: [CounterBinding(), AppBinding()],
    ),
  ];
}

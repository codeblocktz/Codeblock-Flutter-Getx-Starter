import 'package:get/get.dart';
import 'package:starter/pages/change_password_page/controllers/change_password_binding.dart';
import 'package:starter/pages/otp_page/controllers/otp_binding.dart';
import 'package:starter/pages/reset_password_page/controllers/reset_password_binding.dart';
import 'package:starter/pages/signin_page/controllers/signin_binding.dart';
import 'package:starter/pages/signup_page/controllers/signup_binding.dart';
import 'package:starter/pages/bottom_tabs_page/index.dart';
import 'package:starter/pages/change_password_page/index.dart';
import 'package:starter/pages/otp_page/index.dart';
import 'package:starter/pages/reset_password_page/index.dart';
import 'package:starter/pages/signin_page/index.dart';
import 'package:starter/pages/signup_page/index.dart';
import 'package:starter/pages/splash_page/index.dart';
import 'package:starter/shared/controllers/app_controllers/app_binding.dart';
import 'package:starter/pages/bottom_tabs_page/controllers/counter_binding.dart';

class AppRouter {
  static var routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
      binding: AppBinding(),
    ),
    GetPage(
      name: '/signin',
      page: () => SigninPage(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: '/signup',
      page: () => SignupPage(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: '/reset_password',
      page: () => ResetPasswordPage(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: '/otp',
      page: () => OtpPage(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: '/change_password',
      page: () => ChangePasswordPage(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: '/bottom_tabs_page',
      page: () => BottomTabsPage(),
      bindings: [CounterBinding(), AppBinding()],
    ),
  ];
}

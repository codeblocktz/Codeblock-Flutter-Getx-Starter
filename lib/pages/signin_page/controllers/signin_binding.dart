import 'package:get/get.dart';
import 'package:starter/pages/signin_page/controllers/signin_controller.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(() => SigninController());
  }
}

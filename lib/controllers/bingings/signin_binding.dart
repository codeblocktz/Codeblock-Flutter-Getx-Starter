import 'package:get/get.dart';
import 'package:starter/controllers/signin_controller.dart';

class SigninBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SigninController>(() => SigninController());
  }
}

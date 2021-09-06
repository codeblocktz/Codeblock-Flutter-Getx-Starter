import 'package:get/get.dart';
import 'package:starter/pages/signup_page/controllers/signup_controller.dart';

class SignupBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(() => SignupController());
  }
}

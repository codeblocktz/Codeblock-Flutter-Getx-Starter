import 'package:get/get.dart';
import 'package:starter/pages/change_password_page/controllers/change_password_controller.dart';

class ChangePasswordBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(() => ChangePasswordController());
  }
}

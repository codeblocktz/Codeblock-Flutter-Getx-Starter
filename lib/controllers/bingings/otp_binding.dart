import 'package:get/get.dart';
import 'package:starter/controllers/otp_controller.dart';

class OtpBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OtpController>(() => OtpController());
  }
}

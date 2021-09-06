import 'package:get/get.dart';
import 'package:starter/shared/controllers/app_controllers/app_controller.dart';

class AppBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppController>(() => AppController(), fenix: true);
  }
}

import 'package:get/get.dart';
import 'package:starter/controller/counter_controller.dart';
import 'package:starter/controller_services/counter_service.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterService>(() => CounterService(), fenix: true);
    Get.lazyPut<CounterController>(() => CounterController());
  }
}

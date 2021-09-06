import 'package:get/get.dart';

import 'package:starter/pages/bottom_tabs_page/services/counter_service.dart';
import 'package:starter/pages/bottom_tabs_page/controllers/counter_controller.dart';

class CounterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CounterService>(() => CounterService(), fenix: true);
    Get.lazyPut<CounterController>(() => CounterController());
  }
}

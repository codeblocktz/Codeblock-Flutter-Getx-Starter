import 'package:get/get.dart';
import 'package:starter/pages/bottom_tabs_page/models/count.dart';
import 'package:starter/pages/bottom_tabs_page/services/counter_service.dart';

class CounterController extends GetxController {
  final _counterService = Get.find<CounterService>();
  Count get count => _counterService.count.value;

  void increaseCount() {
    _counterService.increaseCount();
  }
}

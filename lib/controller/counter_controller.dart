import 'package:get/get.dart';
import 'package:starter/controller_services/counter_service.dart';
import 'package:starter/models/count.dart';

class CounterController extends GetxController {
  final _counterService = Get.find<CounterService>();
  Count get count => _counterService.count.value;

  void increaseCount() {
    _counterService.increaseCount();
  }
}

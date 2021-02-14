import 'package:get/get.dart';
import 'package:starter/models/count.dart';

class CounterService extends GetxController {
  final count = Count(number: 0).obs;

  setCount(Count value) {
    count(value);
  }

  void increaseCount() {
    int _currentCountNumber = count.value.number + 1;
    Count _count = Count(number: _currentCountNumber);
    setCount(_count);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/counter_controller.dart';

class CountWidget extends GetWidget<CounterController> {
  const CountWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(
      () => Text(
        '${controller.count.number}',
        style: Theme.of(context).textTheme.headline4,
      ),
    ));
  }
}

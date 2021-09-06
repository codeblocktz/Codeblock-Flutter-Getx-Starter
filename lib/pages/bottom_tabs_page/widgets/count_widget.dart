import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/pages/bottom_tabs_page/controllers/counter_controller.dart';

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

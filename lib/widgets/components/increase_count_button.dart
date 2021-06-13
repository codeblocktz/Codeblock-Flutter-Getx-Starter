import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/counter_controller.dart';

class IncreaseCountButton extends GetWidget<CounterController> {
  const IncreaseCountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      heroTag: "increaseCountButton",
      onPressed: () => controller.increaseCount(),
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}

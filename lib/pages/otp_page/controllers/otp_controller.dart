import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class OtpController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  void navigateBack() => Get.back();

  void navigateToChangePassword() => Get.toNamed('/change_password');
}

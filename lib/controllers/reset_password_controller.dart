import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class ResetPasswordController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  void navigateBack() => Get.back();

  void navigateToOtp() => Get.toNamed('otp');
}

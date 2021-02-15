import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:starter/pages/static/signin_page.dart';
import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  void navigateBack() => Get.back();

  void navigateToSignin() =>
      Get.offNamedUntil('signin', (route) => route.isFirst);
}

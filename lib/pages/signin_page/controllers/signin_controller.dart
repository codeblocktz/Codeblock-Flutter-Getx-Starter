import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';

class SigninController extends GetxController {
  final formKey = GlobalKey<FormBuilderState>();

  void navigateToSignUp() {
    Get.toNamed('/signup');
  }

  void navigateToResetPassword() {
    Get.toNamed('/reset_password');
  }

  void navigateToTabPage() => Get.offNamed('/bottom_tabs_page');
}

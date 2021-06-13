import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/signin_controller.dart';

class SigninForm extends GetWidget<SigninController> {
  const SigninForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilder(
        key: controller.formKey,
        child: Column(
          children: [
            FormBuilderTextField(
              name: 'username',
              decoration: InputDecoration(
                labelText:
                    'This value is passed along to the [Text.maxLines] attribute of the [Text] widget used to display the hint text.',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.max(context, 70),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

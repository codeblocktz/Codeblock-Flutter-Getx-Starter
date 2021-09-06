import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:starter/pages/signin_page/controllers/signin_controller.dart';
import 'package:starter/shared/widgets/general/block_button.dart';

class SigninForm extends GetWidget<SigninController> {
  const SigninForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilder(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FormBuilderTextField(
              name: 'username',
              decoration: InputDecoration(
                prefixIcon: Icon(
                  EvaIcons.personOutline,
                  size: 18,
                ),
                filled: true,
                isDense: true,
                labelText: 'Username',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.max(context, 70),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            FormBuilderTextField(
              obscureText: true,
              name: 'password',
              decoration: InputDecoration(
                prefixIcon: Icon(
                  EvaIcons.lockOutline,
                  size: 18,
                ),
                filled: true,
                isDense: true,
                labelText: 'Password',
              ),
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.required(context),
                FormBuilderValidators.max(context, 70),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => controller.navigateToResetPassword(),
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                  InkWell(
                      onTap: () => controller.navigateToSignUp(),
                      child: Text(
                        'Create an account.',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(children: <Widget>[
              Expanded(
                child: BlockButton(
                  buttonText: "Signin",
                  onPressed: () {
                    controller.formKey.currentState!.save();
                    if (controller.formKey.currentState!.validate()) {
                      controller.navigateToTabPage();
                    } else {
                      print("validation failed");
                    }
                  },
                ),
              )
            ])),
          ],
        ),
      ),
    );
  }
}

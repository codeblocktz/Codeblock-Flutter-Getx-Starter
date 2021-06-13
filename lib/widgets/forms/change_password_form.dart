import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/change_password_controller.dart';

class ChangePasswordForm extends GetWidget<ChangePasswordController> {
  const ChangePasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FormBuilder(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          EvaIcons.lockOutline,
                          size: 18,
                        ),
                        Text('Password'),
                      ],
                    ),
                  ),
                  FormBuilderTextField(
                    obscureText: true,
                    name: 'password',
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      labelText: 'Password',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.max(context, 70),
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Wrap(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Icon(
                          EvaIcons.lockOutline,
                          size: 18,
                        ),
                        Text('Repeat Password'),
                      ],
                    ),
                  ),
                  FormBuilderTextField(
                    obscureText: true,
                    name: 'repeatPassword',
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      filled: true,
                      labelText: 'Repeat Password',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context),
                      FormBuilderValidators.max(context, 70),
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                      onTap: () => controller.navigateBack(),
                      child: Text(
                        'Get back to login?',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Row(children: <Widget>[
              Expanded(
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "Change Password",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    controller.formKey.currentState!.save();
                    if (controller.formKey.currentState!.validate()) {
                      controller.navigateToSignin();
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

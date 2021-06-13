import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
                        EvaIcons.personOutline,
                        size: 18,
                      ),
                      Text('Username'),
                    ],
                  ),
                ),
                FormBuilderTextField(
                  name: 'username',
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    labelText: 'Username',
                  ),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context),
                    FormBuilderValidators.max(context, 70),
                  ]),
                ),
              ],
            )),
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
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 18),
                  color: Theme.of(context).accentColor,
                  child: Text(
                    "Signin",
                    style: TextStyle(color: Colors.white),
                  ),
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

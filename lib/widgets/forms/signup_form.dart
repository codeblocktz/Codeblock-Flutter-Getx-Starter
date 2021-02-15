import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/signup_controller.dart';

class SignupForm extends GetWidget<SignupController> {
  const SignupForm({Key key}) : super(key: key);

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
                      Text('Full name'),
                    ],
                  ),
                ),
                FormBuilderTextField(
                  name: 'fullName',
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    labelText: 'Full name',
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
                    "Signup",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    controller.formKey.currentState.save();
                    if (controller.formKey.currentState.validate()) {
                      print(controller.formKey.currentState.value);
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

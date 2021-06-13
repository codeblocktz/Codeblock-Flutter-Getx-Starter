import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:starter/controllers/otp_controller.dart';

class OtpForm extends GetWidget<OtpController> {
  const OtpForm({Key key}) : super(key: key);

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
                      Text('Reset code'),
                    ],
                  ),
                ),
                FormBuilderTextField(
                  name: 'code',
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    filled: true,
                    labelText: 'Reset Code',
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
                    "Send me reset code",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    controller.formKey.currentState.save();
                    if (controller.formKey.currentState.validate()) {
                      controller.navigateToChangePassword();
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

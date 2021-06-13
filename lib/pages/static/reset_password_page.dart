import 'package:flutter/material.dart';
import 'package:starter/widgets/forms/reset_password_form.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 4,
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Reset password',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline5!
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                  ])),
          Container(padding: EdgeInsets.all(30), child: ResetPasswordForm())
        ],
      ),
    );
  }
}

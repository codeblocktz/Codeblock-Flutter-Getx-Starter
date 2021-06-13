import 'package:flutter/material.dart';
import 'package:starter/widgets/forms/signin_form.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
            ),
          ),
          Container(child: SigninForm())
        ],
      ),
    );
  }
}

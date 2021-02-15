import 'package:flutter/material.dart';
import 'package:starter/widgets/forms/otp_form.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key key}) : super(key: key);

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
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter reset code',
                      style: Theme.of(context)
                          .primaryTextTheme
                          .headline5
                          .copyWith(color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      'The Reset code  was sent on the number  that end with 99',
                    ),
                  ])),
          Container(padding: EdgeInsets.all(30), child: OtpForm())
        ],
      ),
    );
  }
}

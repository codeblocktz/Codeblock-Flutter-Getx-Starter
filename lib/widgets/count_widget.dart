import 'package:flutter/material.dart';

class CountWidget extends StatelessWidget {
  final int count;
  const CountWidget({Key key, @required this.count})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        '$count',
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}

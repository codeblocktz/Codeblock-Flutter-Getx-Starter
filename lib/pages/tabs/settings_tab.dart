import 'package:flutter/material.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}

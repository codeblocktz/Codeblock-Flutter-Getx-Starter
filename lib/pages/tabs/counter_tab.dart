import 'package:flutter/material.dart';
import 'package:starter/widgets/count_widget.dart';
import 'package:starter/widgets/increase_count_button.dart';
import 'package:starter/widgets/translate_button.dart';
import 'package:get/get.dart';

class CounterTab extends StatelessWidget {
  const CounterTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('counter_page_title'.tr),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'counter_text'.tr,
              ),
              CountWidget(),
            ],
          ),
        ),
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 80.0,
              right: 10.0,
              child: TranslateButton(),
            ),
            Positioned(
              bottom: 10.0,
              right: 10.0,
              child: IncreaseCountButton(),
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

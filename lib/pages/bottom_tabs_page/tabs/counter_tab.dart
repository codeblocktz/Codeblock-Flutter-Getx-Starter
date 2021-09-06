import 'package:flutter/material.dart';
import 'package:starter/pages/bottom_tabs_page/widgets/count_widget.dart';
import 'package:starter/pages/bottom_tabs_page/widgets/increase_count_button.dart';
import 'package:starter/pages/bottom_tabs_page/widgets/theme_switch_button.dart';
import 'package:starter/shared/widgets/general/translate_button.dart';
import 'package:get/get.dart';

class CounterTab extends StatelessWidget {
  const CounterTab({Key? key}) : super(key: key);

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
              bottom: 150.0,
              right: 10.0,
              child: ThemeSwitchButton(),
            ),
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
        ) //This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

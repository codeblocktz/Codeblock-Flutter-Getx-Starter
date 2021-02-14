import 'package:get/get.dart';
import 'en.dart';
import 'sw.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {'en_US': en_US, 'sw_TZ': sw_TZ};
}

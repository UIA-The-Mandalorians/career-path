import 'package:get/get.dart';
import 'en_us/en_us_translations.dart';
import 'hi_in/hi_in_translations.dart';

class AppLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUs,
    'hi_IN': hi_In
  };
}

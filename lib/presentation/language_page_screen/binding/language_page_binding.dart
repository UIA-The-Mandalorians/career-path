import '../controller/language_page_controller.dart';
import 'package:get/get.dart';

class LanguagePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LanguagePageController());
  }
}

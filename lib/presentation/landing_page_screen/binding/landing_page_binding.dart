import '../controller/landing_page_controller.dart';
import 'package:get/get.dart';

class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingPageController());
  }
}

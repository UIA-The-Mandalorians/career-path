import '../controller/page_controller.dart';
import 'package:get/get.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashPageController());
  }
}

import 'package:app/core/app_export.dart';
import 'package:app/presentation/splash/models/page_model.dart';

class SplashPageController extends GetxController {
  Rx<SplashPageModel> homePageModelObj = SplashPageModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 4000), () {
      Get.offNamed(AppRoutes.landingPageScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}

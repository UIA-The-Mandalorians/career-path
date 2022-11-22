import 'package:app/core/app_export.dart';
import 'package:app/presentation/landing_page_screen/models/landing_page_model.dart';

class LandingPageController extends GetxController {
  Rx<LandingPageModel> landingPageModelObj = LandingPageModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.toNamed(AppRoutes.languagePageScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}

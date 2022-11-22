import 'package:app/core/app_export.dart';
import 'package:app/presentation/language_page_screen/models/language_page_model.dart';

class LanguagePageController extends GetxController {
  Rx<LanguagePageModel> languagePageModelObj = LanguagePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

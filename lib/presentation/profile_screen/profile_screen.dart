import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray901,
            appBar: CustomAppBar(
                height: getVerticalSize(60.00),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(20.00),
                    svgPath: ImageConstant.imgReply,
                    margin: getMargin(left: 25, top: 19, bottom: 12),
                    onTap: onTapReply),
                actions: [
                  AppbarImage(
                      height: getSize(32.00),
                      width: getSize(32.00),
                      imagePath: ImageConstant.imgEdit61,
                      margin:getMargin(left: 25, top: 12, right: 25, bottom: 12))
                ]),
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 23, top: 16, right: 23),
                              child: Text("lbl_your_profile".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterExtraBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 23, top: 18, right: 23),
                              child: CommonImageView(
                                  svgPath: ImageConstant.imgUndrawmaleava,
                                  height: getSize(160.00),
                                  width: getSize(160.00)))),
                      Align(
                          alignment: Alignment.topRight,
                          child: Padding(
                              padding: getPadding(left: 54, top: 17, right: 37),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("msg_edit_profile_ph".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold22),
                                    Padding(
                                        padding: getPadding(left: 18, top: 3),
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgEdit,
                                            height: getSize(22.00),
                                            width: getSize(22.00)))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 26, top: 61, right: 26),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CommonImageView(
                                              imagePath: ImageConstant.imgUser1,
                                              height: getSize(36.00),
                                              width: getSize(36.00)),
                                          Padding(
                                              padding: getPadding(top: 26),
                                              child: CommonImageView(
                                                  imagePath:
                                                      ImageConstant.imgTest1,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00))),
                                          Padding(
                                              padding: getPadding(top: 26),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgVideolibrary,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00))),
                                          Padding(
                                              padding: getPadding(top: 34),
                                              child: CommonImageView(
                                                  svgPath: ImageConstant.imgMenu36x36,
                                                  height: getSize(36.00),
                                                  width: getSize(36.00)))
                                        ]),
                                    Padding(
                                        padding: getPadding(
                                            left: 8, top: 9, bottom: 6),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding:
                                                      getPadding(right: 10),
                                                  child: Text(
                                                      "lbl_my_profile".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold20WhiteA700)),
                                              Container(
                                                  width:
                                                      getHorizontalSize(207.00),
                                                  margin: getMargin(top: 26),
                                                  child: Text(
                                                      "msg_psychometric_ca".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold20WhiteA700)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 29, right: 10),
                                                  child: Text(
                                                      "lbl_saved_videos".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterBold20WhiteA700)),
                                              Padding(
                                                  padding: getPadding(
                                                      top: 44, right: 10),
                                                  child: Text("lbl_messages".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle.txtInterBold20WhiteA700))
                                            ]))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(left: 23, top: 83, right: 23),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CommonImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(36.00),
                                        width: getSize(36.00)),
                                    Padding(
                                        padding: getPadding(
                                            left: 11, top: 7, bottom: 8),
                                        child: Text("lbl_settings".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtInterBold20WhiteA700))
                                  ]))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: GestureDetector(
                              onTap: () {
                                onTapRowlogouteleven();
                              },
                              child: Padding(
                                  padding: getPadding(
                                      left: 25, top: 10, right: 25, bottom: 66),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CommonImageView(
                                            imagePath:
                                                ImageConstant.imgLogout11,
                                            height: getVerticalSize(36.00),
                                            width: getHorizontalSize(34.00)),
                                        Padding(
                                            padding: getPadding(
                                                left: 12, top: 9, bottom: 6),
                                            child: Text("lbl_logout".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtInterBold20WhiteA700))
                                      ]))))
                    ])))));
  }

  onTapRowlogouteleven() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }

  onTapReply() {
    Get.toNamed(AppRoutes.homePageScreen);
  }
}

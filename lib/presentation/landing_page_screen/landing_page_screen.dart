import 'controller/landing_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPageScreen extends GetWidget<LandingPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(571.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            height: getVerticalSize(555.00),
                                            width: size.width,
                                            margin: getMargin(bottom: 10),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  getHorizontalSize(
                                                                      50.00)),
                                                          child: CommonImageView(
                                                              imagePath:
                                                                  ImageConstant
                                                                      .imgRectangle25,
                                                              height:
                                                                  getVerticalSize(
                                                                      555.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      393.00),
                                                              fit: BoxFit
                                                                  .cover))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 52,
                                                              top: 54,
                                                              right: 52,
                                                              bottom: 54),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                            3.00),
                                                                    margin: getMargin(
                                                                        left:
                                                                            37,
                                                                        right:
                                                                            36),
                                                                    child: SmoothIndicator(
                                                                        offset:
                                                                            0,
                                                                        count:
                                                                            3,
                                                                        axisDirection:
                                                                            Axis
                                                                                .horizontal,
                                                                        effect: ScrollingDotsEffect(
                                                                            spacing:
                                                                                40,
                                                                            activeDotColor:
                                                                                ColorConstant.red300,
                                                                            dotColor: ColorConstant.bluegray100,
                                                                            dotHeight: getVerticalSize(3.00),
                                                                            dotWidth: getHorizontalSize(45.00)))),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: getVerticalSize(175.00),
                                                                        width: getHorizontalSize(288.00),
                                                                        margin: getMargin(top: 44),
                                                                        child: Stack(alignment: Alignment.topCenter, children: [
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: CommonImageView(svgPath: ImageConstant.imgGroup57, height: getVerticalSize(175.00), width: getHorizontalSize(288.00))),
                                                                          Align(
                                                                              alignment: Alignment.topCenter,
                                                                              child: Container(height: getVerticalSize(105.00), width: getHorizontalSize(1.00), margin: getMargin(left: 143, top: 6, right: 143, bottom: 10), decoration: BoxDecoration(color: ColorConstant.bluegray100)))
                                                                        ])))
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 33, top: 10, right: 33),
                                            child: Text(
                                                "msg_make_your_dream".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style:
                                                    AppStyle.txtInterBold36)))
                                  ]))),
                      Container(
                          width: getHorizontalSize(298.00),
                          margin: getMargin(left: 46, top: 21, right: 46),
                          child: Text("msg_now_easier_to_c".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtInterBold20)),
                      CustomButton(
                          width: 180,
                          text: "lbl_get_started".tr,
                          margin: getMargin(
                              left: 46, top: 42, right: 46, bottom: 5),
                          onTap: onTapGetstarted)
                    ])))));
  }

  onTapGetstarted() {
    Get.toNamed(AppRoutes.languagePageScreen);
  }
}

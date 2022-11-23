import 'dart:ui';

import 'controller/language_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LanguagePageScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LanguagePageState();
  }
}

class _LanguagePageState extends State<LanguagePageScreen> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("English"), value: "en_US"),
      DropdownMenuItem(child: Text("Hindi"), value: "hi_IN"),
      // DropdownMenuItem(child: Text("Portuguese"), value: "pt_PT"),
      // DropdownMenuItem(child: Text("French"), value: "French"),
    ];
    return menuItems;
  }

  String selectedValue = "en_US";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray901,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Container(
                          height: getVerticalSize(3.00),
                          margin: getMargin(left: 61, top: 54, right: 61),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                  spacing: 40,
                                  activeDotColor: ColorConstant.red301,
                                  dotColor: ColorConstant.whiteA700,
                                  dotHeight: getVerticalSize(3.00),
                                  dotWidth: getHorizontalSize(45.00)))),
                      Padding(
                          padding: getPadding(left: 61, top: 24, right: 61),
                          child: Text("lbl_choose_language".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold24)),
                      Padding(
                          padding: getPadding(left: 61, top: 21, right: 61),
                          child: Text("msg_learn_in_your_o".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterBold20Red300)),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              height: getVerticalSize(688.00),
                              width: size.width,
                              margin: getMargin(top: 9),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                            height: getVerticalSize(554.00),
                                            width: size.width,
                                            margin: getMargin(top: 10),
                                            child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: CommonImageView(
                                                          imagePath: ImageConstant
                                                              .imgRectangle27,
                                                          height:
                                                              getVerticalSize(
                                                                  554.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  393.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  311.00),
                                                          margin: getMargin(
                                                              left: 27,
                                                              top: 139,
                                                              right: 27,
                                                              bottom: 139),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left: 1,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            10),
                                                                    child: Text(
                                                                        "msg_choose_from_the"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtInterBold20Black900)),
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            top:
                                                                                10),
                                                                    child: Row(
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .spaceBetween,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .center,
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Container(
                                                                              height: getVerticalSize(50.00),
                                                                              width: getHorizontalSize(280.00),
                                                                              child: DropdownButton(
                                                                                  iconSize: 0.0,
                                                                                  value: selectedValue,
                                                                                  onChanged: (String? newValue) {
                                                                                    setState(() {
                                                                                      selectedValue = newValue!;
                                                                                      print(newValue);
                                                                                      if (newValue == 'hi_IN') {
                                                                                      Get.updateLocale(const Locale('hi', 'IN'));
                                                                                      } else {
                                                                                        if (newValue == 'en_US') {
                                                                                        Get.updateLocale(const Locale('en', 'US'));
                                                                                        }
                                                                                      }
                                                                                    });
                                                                                  },
                                                                                  items: dropdownItems)),
                                                                          Padding(
                                                                              padding: getPadding(top: 8, bottom: 8),
                                                                              child: CommonImageView(imagePath: ImageConstant.imgNext11, height: getSize(24.00), width: getSize(24.00)))
                                                                        ])),
                                                                CustomButton(
                                                                    width: 185,
                                                                    text:
                                                                        "lbl_continue"
                                                                            .tr,
                                                                    margin: getMargin(
                                                                        left:
                                                                            49,
                                                                        top:
                                                                            112,
                                                                        right:
                                                                            49),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .FillRed300,
                                                                    onTap:
                                                                        onTapContinue)
                                                              ])))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(
                                                left: 121,
                                                right: 121,
                                                bottom: 10),
                                            child: CommonImageView(
                                                svgPath:
                                                    ImageConstant.imgGroup42,
                                                height: getSize(150.00),
                                                width: getSize(150.00))))
                                  ])))
                    ])))));
  }

  onTapContinue() {
    Get.offNamed(AppRoutes.loginPageScreen);
  }
}

import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:app/core/app_export.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:app/widgets/custom_button.dart';

class HomePageScreen extends GetWidget<HomePageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: CustomAppBar(
                height: getVerticalSize(70.00),
                leadingWidth: 50,
                leading: AppbarImage(
                    height: getVerticalSize(25.00),
                    width: getHorizontalSize(35.00),
                    imagePath: ImageConstant.imgUser1,
                    margin: getMargin(left: 15, top: 14, bottom: 16),
                    onTap: onTapMenu),
                actions: [
                  AppbarImage(
                      height: getSize(35.00),
                      width: getSize(35.00),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 12, top: 10, right: 12, bottom: 10))
                ]),
            body: Container(
                color: Color.fromARGB(255, 26, 23, 57),
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(771.00),
                        width: size.width,
                        child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              // Align(
                              //     alignment: Alignment.topLeft,
                              //     child: Container(
                              //         height: getVerticalSize(35.00),
                              //         width: getHorizontalSize(100.00),
                              //         margin: getMargin(
                              //             left: 43,
                              //             top: 9,
                              //             right: 43,
                              //             bottom: 10
                              //         ),
                              //         decoration: BoxDecoration(
                              //             color: ColorConstant.whiteA7007f,
                              //             borderRadius: BorderRadius.circular(
                              //                 getHorizontalSize(17.50)
                              //             )
                              //         )
                              //     )
                              // ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      height: getVerticalSize(748.00),
                                      width: size.width,
                                      margin: getMargin(top: 10),
                                      child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: CommonImageView(
                                                    imagePath: ImageConstant
                                                        .imgRectangle27,
                                                    height:
                                                        getVerticalSize(758.00),
                                                    width: getHorizontalSize(
                                                        393.00))),
                                            Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 6,
                                                        top: 42,
                                                        right: 10,
                                                        bottom: 42),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              9,
                                                                          right:
                                                                              13),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Get.toNamed(AppRoutes.study);
                                                                          },
                                                                          child: Text(
                                                                              "lbl_video".tr,
                                                                              overflow: TextOverflow.ellipsis,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtInterSemiBold16),
                                                                        ),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 2,
                                                                                top: 6,
                                                                                bottom: 5),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(3.00)), child: CommonImageView(svgPath: ImageConstant.imgArrowdown, height: getVerticalSize(8.00), width: getHorizontalSize(12.00), fit: BoxFit.cover))),
                                                                        Spacer(),
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Get.toNamed(AppRoutes.scholarships);
                                                                          },
                                                                          child: Padding(
                                                                              padding: getPadding(left: 21),
                                                                              child: Text("lbl_scholarships".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16)),
                                                                        ),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 2,
                                                                                top: 6,
                                                                                bottom: 5),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(3.00)), child: CommonImageView(svgPath: ImageConstant.imgArrowdown, height: getVerticalSize(8.00), width: getHorizontalSize(12.00), fit: BoxFit.cover))),
                                                                        Spacer(),
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Get.toNamed(AppRoutes.careers);
                                                                          },
                                                                          child: Padding(
                                                                              padding: getPadding(left: 21),
                                                                              child: Text("lbl_careers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtInterSemiBold16)),
                                                                        ),
                                                                        Padding(
                                                                            padding: getPadding(
                                                                                left: 2,
                                                                                top: 6,
                                                                                bottom: 5),
                                                                            child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(3.00)), child: CommonImageView(svgPath: ImageConstant.imgArrowdown, height: getVerticalSize(8.00), width: getHorizontalSize(12.00), fit: BoxFit.cover)))
                                                                      ]))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 32,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_explore"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold20)),
                                                          Container(
                                                              margin: getMargin(
                                                                  left: 7,
                                                                  top: 14,
                                                                  right: 10),
                                                              decoration: AppDecoration
                                                                  .outlineBlack900
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder22),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                23,
                                                                            top:
                                                                                3,
                                                                            bottom:
                                                                                4),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgFolder,
                                                                            height: getVerticalSize(66.00),
                                                                            width: getHorizontalSize(78.00))),
                                                                    Container(
                                                                        width: getHorizontalSize(
                                                                            178.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                10,
                                                                            bottom:
                                                                                9),
                                                                        child:
                                                                            InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Get.toNamed(AppRoutes.test);
                                                                          },
                                                                          child: Text(
                                                                              "msg_take_test_to_ge".tr,
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.center,
                                                                              style: AppStyle.txtInterBold16Black900),
                                                                        ))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 7,
                                                                      top: 19,
                                                                      right:
                                                                          10),
                                                              child: Text(
                                                                  "msg_star_counseller"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtInterSemiBold20)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              13,
                                                                          top:
                                                                              9,
                                                                          right:
                                                                              9),
                                                                  child:
                                                                      SingleChildScrollView(
                                                                    scrollDirection:
                                                                        Axis.horizontal,
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
                                                                          InkWell(
                                                                            onTap:
                                                                                () {
                                                                              Get.toNamed(AppRoutes.chat);
                                                                            },
                                                                            child: Container(
                                                                                decoration: AppDecoration.outlineGray900.copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                                                                                child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                  Padding(padding: getPadding(all: 8), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.00)), child: CommonImageView(imagePath: ImageConstant.imgDownload41, height: getSize(64.00), width: getSize(64.00), fit: BoxFit.cover)))
                                                                                ])),
                                                                          ),
                                                                          SizedBox(
                                                                            width:
                                                                                16,
                                                                          ),
                                                                          Container(
                                                                              decoration: AppDecoration.outlineGray900.copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(all: 8), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.00)), child: CommonImageView(imagePath: ImageConstant.imgIstockphoto130, height: getSize(64.00), width: getSize(64.00), fit: BoxFit.cover)))
                                                                              ])),
                                                                          SizedBox(
                                                                            width:
                                                                                16,
                                                                          ),
                                                                          Container(
                                                                              decoration: AppDecoration.outlineGray900.copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(all: 8), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.00)), child: CommonImageView(imagePath: ImageConstant.imgImages21, height: getSize(64.00), width: getSize(64.00), fit: BoxFit.cover)))
                                                                              ])),
                                                                          SizedBox(
                                                                            width:
                                                                                16,
                                                                          ),
                                                                          Container(
                                                                              decoration: AppDecoration.outlineGray900.copyWith(borderRadius: BorderRadiusStyle.circleBorder40),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                Padding(padding: getPadding(all: 8), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(32.00)), child: CommonImageView(imagePath: ImageConstant.imgRetirementtran, height: getSize(64.00), width: getSize(64.00), fit: BoxFit.cover)))
                                                                              ]))
                                                                        ]),
                                                                  ))),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 9,
                                                                      top: 28,
                                                                      right:
                                                                          10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    CommonImageView(
                                                                        imagePath:
                                                                            ImageConstant
                                                                                .imgLetters1,
                                                                        height: getSize(
                                                                            32.00),
                                                                        width: getSize(
                                                                            32.00)),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                8,
                                                                            bottom:
                                                                                5),
                                                                        child: Text(
                                                                            "lbl_study_abroad"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtInterBold16Black900))
                                                                  ])),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 19,
                                                                      right:
                                                                          10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                31,
                                                                            bottom:
                                                                                31),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgNextpage,
                                                                            height: getVerticalSize(28.00),
                                                                            width: getHorizontalSize(28.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                7),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgDownload51,
                                                                            height: getVerticalSize(90.00),
                                                                            width: getHorizontalSize(136.00))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                                45),
                                                                        child: CommonImageView(
                                                                            imagePath:
                                                                                ImageConstant.imgDownload61,
                                                                            height: getVerticalSize(90.00),
                                                                            width: getHorizontalSize(135.00)))
                                                                  ])),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              13,
                                                                          top:
                                                                              12,
                                                                          right:
                                                                              1),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                            width: getHorizontalSize(
                                                                                182.00),
                                                                            child: Text("msg_software_engine".tr,
                                                                                maxLines: null,
                                                                                textAlign: TextAlign.center,
                                                                                style: AppStyle.txtInterBold15)),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(163.00),
                                                                            margin: getMargin(bottom: 2),
                                                                            child: Text("msg_construction_ma".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtInterBold15))
                                                                      ]))),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              13,
                                                                          top:
                                                                              11),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(183.00),
                                                                            margin: getMargin(top: 1),
                                                                            child: Text("msg_canterbury_chri".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtInterBold12)),
                                                                        Container(
                                                                            width:
                                                                                getHorizontalSize(165.00),
                                                                            child: RichText(
                                                                                text: TextSpan(children: [
                                                                                  TextSpan(text: "msg_the_mechanism_o2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(12), fontFamily: 'Inter', fontWeight: FontWeight.w400)),
                                                                                  TextSpan(text: "lbl_read_more".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(12), fontFamily: 'Inter', fontWeight: FontWeight.w700))
                                                                                ]),
                                                                                textAlign: TextAlign.center))
                                                                      ])))
                                                        ])))
                                          ]))),
                              CustomButton(
                                  width: 368,
                                  text: "msg_careers_gu".tr,
                                  margin: getMargin(
                                      left: 12, right: 12, bottom: 10),
                                  variant: ButtonVariant.FillIndigo40049,
                                  shape: ButtonShape.RoundedBorder20,
                                  fontStyle: ButtonFontStyle.InterBold22,
                                  alignment: Alignment.topCenter)
                            ]))))));
  }

  onTapMenu() {
    Get.toNamed(AppRoutes.profileScreen);
  }
}

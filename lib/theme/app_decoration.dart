import 'package:flutter/material.dart';

import '../core/utils/color_constant.dart';
import '../core/utils/size_utils.dart';

class AppDecoration {
  static BoxDecoration get txtFillRed300 => BoxDecoration(
        color: ColorConstant.red300,
      );
  static BoxDecoration get fillGray901 => BoxDecoration(
        color: ColorConstant.gray901,
      );
  static BoxDecoration get fillGray900 => BoxDecoration(
        color: ColorConstant.gray900,
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray900 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray900,
          width: getHorizontalSize(
            5.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
}

class BorderRadiusStyle {
  static BorderRadius circleBorder14 = BorderRadius.circular(
    getHorizontalSize(
      14.33,
    ),
  );

  static BorderRadius circleBorder40 = BorderRadius.circular(
    getHorizontalSize(
      40.00,
    ),
  );

  static BorderRadius roundedBorder3 = BorderRadius.circular(
    getHorizontalSize(
      3.00,
    ),
  );

  static BorderRadius roundedBorder22 = BorderRadius.circular(
    getHorizontalSize(
      22.00,
    ),
  );

  static BorderRadius circleBorder32 = BorderRadius.circular(
    getHorizontalSize(
      32.00,
    ),
  );

  static BorderRadius roundedBorder50 = BorderRadius.circular(
    getHorizontalSize(
      50.00,
    ),
  );

  static BorderRadius txtCircleBorder23 = BorderRadius.circular(
    getHorizontalSize(
      23.00,
    ),
  );
}

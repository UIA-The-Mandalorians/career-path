import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color whiteA7007f = fromHex('#7fffffff');

  static Color gray901 = fromHex('#1a1739');

  static Color whiteA700A5 = fromHex('#a5ffffff');

  static Color gray900 = fromHex('#191739');

  static Color gray400A5 = fromHex('#a5b5adad');

  static Color whiteA700D6 = fromHex('#d6ffffff');

  static Color black9009e = fromHex('#9e000000');

  static Color indigo40049 = fromHex('#496b65a4');

  static Color bluegray100 = fromHex('#cbcbcb');

  static Color red300 = fromHex('#e36262');

  static Color red301 = fromHex('#e36363');

  static Color gray300Bf = fromHex('#bfe4e1df');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color indigoA400 = fromHex('#4051ec');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

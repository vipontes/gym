import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = const Color(0xFF00284F);
  static const Color primaryDark = const Color(0xFF00274E);
  static const Color secondary = const Color(0xFF76AADB);
  static const Color gray = const Color(0xFF808082);
  static const Color lightGray = const Color(0xFFd6d6d6);
  static const Color white = const Color(0xFFFFFFFF);
  static const Color black = const Color(0xFF2d2d2d);
  static const Color blue = const Color(0xFF5770B6);
  static const Color yellow = const Color(0xFFC29344);
  static Color shadow = Color(0xFF00284F).withOpacity(0.2);
  static Map<int, Color> color = {
    50: primary,
    100: primary,
    200: primary,
    300: primary,
    400: primary,
    500: primary,
    600: primary,
    700: primary,
    800: primary,
    900: primary,
  };
  static MaterialColor colorCustom = MaterialColor(0xFF00284F, color);
}
// https://convertingcolors.com/

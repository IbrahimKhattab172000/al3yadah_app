import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF0BB98F);
  static const Color secondary = Color(0xFF19578A);
  static const Color third = Color(0xFF587BBA);
  static const Color fourth = Color(0xFFBAD2F3);

  static const Color black = Color(0xFF232323);
  static const Color white = Color(0xffFFFFFF);

  static const Color lightGray = Color(0xFFCCCCCC);
  static const Color gray = Color(0xFF868686);
  static const Color darkGray = Color(0xFF484848);

  static const Color green = Color(0xFF48FF8A);
  static const Color greenSacro = Color(0xFF31A411);

  static const Color red = Color(0xffFF3333);
  static const Color yellow = Color(0xffF6C545);
  static const Color background = Color(0xffFEFEFE);
}

extension AppColorsTheme on Color {
  Color get theme {
    return this;
  }
}

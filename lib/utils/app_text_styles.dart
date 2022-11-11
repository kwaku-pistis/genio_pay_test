import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle titleText(Color color, double fontSize, FontWeight? fontWeight) {
    return TextStyle(
      fontFamily: 'IBM Plex Sans',
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.w600,
      color: color,
    );
  }

  static TextStyle bodyText(Color color, double fontSize, FontWeight? fontWeight,) {
    return TextStyle(
      fontFamily: 'IBM Plex Sans',
      fontSize: fontSize,
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color,
    );
  }
}

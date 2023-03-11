import 'package:flutter/material.dart';

class FontsConstants {
  static const String fontFamily = 'Poppins';
}

class FontSize {
  static const double s22 = 22;
}

TextStyle _getTextStyle(
    {required Color color,
    required double fontSize,
    required FontWeight fontWeight}) {
  return TextStyle(
      fontFamily: FontsConstants.fontFamily,
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight);
}

TextStyle getLightTextStyle({required Color color, double fontSize = 16}) {
  return _getTextStyle(
      color: color, fontSize: fontSize, fontWeight: FontWeight.w300);
}

TextStyle getRegularTextStyle({required Color color, double fontSize = 16}) {
  return _getTextStyle(
      color: color, fontSize: fontSize, fontWeight: FontWeight.w400);
}

TextStyle getMediumTextStyle({required Color color, double fontSize = 16}) {
  return _getTextStyle(
      color: color, fontSize: fontSize, fontWeight: FontWeight.w500);
}

TextStyle getSemiBoldTextStyle({required Color color, double fontSize = 16}) {
  return _getTextStyle(
      color: color, fontSize: fontSize, fontWeight: FontWeight.w600);
}

TextStyle getBoldTextStyle({required Color color, double fontSize = 16}) {
  return _getTextStyle(
      color: color, fontSize: fontSize, fontWeight: FontWeight.w700);
}

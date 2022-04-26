import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF14B800);
const kSecondaryColor = Color(0xFF108400);
const kBoxColor = Color(0xFFEEF2FC);
const kAnimationDuration = Duration(milliseconds: 200);

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData?.size.width;
    screenHeight = _mediaQueryData?.size.height;
    orientation = _mediaQueryData?.orientation;
  }
}

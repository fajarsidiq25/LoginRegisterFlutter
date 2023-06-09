import 'package:flutter/material.dart';

const kPrimaryColor = Color.fromARGB(255, 255, 255, 255);
const kBackgroundColor = Color.fromARGB(255, 26, 111, 119);
const kErrorColor = Color(0xFFFE5350);

class Config {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

import 'package:flutter/cupertino.dart';

class Dimensions {
  static late MediaQueryData _mediaQueryData;
  static late double phoneScreenWidth;
  static late double phoneScreenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    phoneScreenWidth = _mediaQueryData.size.width;
    phoneScreenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  static double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = Dimensions.phoneScreenWidth;
    double designWidth = 375;
    return (inputWidth / designWidth) * screenWidth;
  }

  static double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = Dimensions.phoneScreenHeight;
    double designHeight = 768;
    return (inputHeight / designHeight) * screenHeight;
  }

  static bool get isTablet {
    double width = Dimensions.phoneScreenWidth > Dimensions.phoneScreenHeight
        ? Dimensions.phoneScreenHeight
        : Dimensions.phoneScreenWidth;
    return (width > 599);
  }
}
import 'package:flutter/material.dart';

class Config {
  static MediaQueryData? mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;

  //width and height of the screen initialisation
  void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData!.size.width;
    screenHeight = mediaQueryData!.size.height;
  }

  static get widthSize {
    return screenWidth;
  }

  static get heightSize {
    return screenHeight;
  }

  //spacing
  static const smallSpace = SizedBox(
    height: 25.0,
  );
  static final midiumSpace = SizedBox(
    height: screenHeight! * 0.05,
  );
  static final bigSpace = SizedBox(
    height: screenHeight! * 0.08,
  );

  static const primaryColor = Colors.deepPurple;
}

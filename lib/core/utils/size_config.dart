import 'package:flutter/cupertino.dart';

class SizeConfig {
  static double? screenWidth;
  static double? screenHight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHight = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;
    defaultSize = orientation == Orientation.landscape
        ? screenHight! * .024
        : screenWidth! * .024;
    print("this is the default size$defaultSize");
  }
}

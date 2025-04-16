import 'package:flutter/widgets.dart';

class ScreenConfig{
  static double screenWidth = 0;
  static double screenHeight = 0;

  static void init(BuildContext context){
    screenHeight = MediaQuery.of(context).size.width;
    screenWidth = MediaQuery.of(context).size.height;
  }
}
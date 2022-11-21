import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class CustomSpace {
  static Widget spaceWidth = const SizedBox(width: 10);
  static Widget spaceHeight = const SizedBox(height: 10);
}

class CustomColors {
  static Color primaryColor = const Color(0xff229AD3);
  static Color primaryColorLight = const Color(0xff0F95D4);
  static Color primaryColorDark = const Color(0xff4765F4);
  static Color black = const Color(0xff2D2D2D);
}

double screenWidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
double screenHeight =
    ui.window.physicalSize.height / ui.window.devicePixelRatio;

String assetsIcons = "assets/icons/";
String assetsImages = "assets/images/";

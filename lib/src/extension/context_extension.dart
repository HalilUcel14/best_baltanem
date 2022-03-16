import 'dart:io';

import 'package:flutter/material.dart';

import 'int_extension.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  TextTheme get primaryTextTheme => theme.primaryTextTheme;
  ColorScheme get colorSheme => theme.colorScheme;
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get size => mediaQuery.size;
  //
  double get witdh => size.width;
  double get height => size.height;
  //
  double dynamicHeight(double value) => height * value;
  double dynamicWidth(double value) => witdh * value;
  //
  double get heightXS => height * 0.01;
  double get heightS => height * 0.02;
  double get heightM => height * 0.04;
  double get heightL => height * 0.06;
  double get heightXL => height * 0.08;
  double get heightXXL => height * 0.1;
  //
  bool get isKeyboardOpen => mediaQuery.viewInsets.bottom > 0;
  Brightness get appBrightness => mediaQuery.platformBrightness;
}

extension DeviceOSExtension on BuildContext {
  bool get isAndroid => Platform.isAndroid;
  bool get isIOS => Platform.isIOS;
  bool get isWindows => Platform.isWindows;
  bool get isLinux => Platform.isLinux;
  bool get isMacOS => Platform.isMacOS;
}

extension OrientationExtension on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension ColorExtension on BuildContext {
  MaterialColor get randomColor => Colors.primaries[17.randomValue];
}

extension PaddingExtension on BuildContext {
  EdgeInsets get padAllLow => EdgeInsets.all(heightXS);
  EdgeInsets get padAllNormaly => EdgeInsets.all(heightS);
  EdgeInsets get padAllMedium => EdgeInsets.all(heightM);
  EdgeInsets get padAllLarge => EdgeInsets.all(heightL);
  EdgeInsets get padAllXLarge => EdgeInsets.all(heightXL);
  EdgeInsets get padAllXXLarge => EdgeInsets.all(heightXXL);
  //
  EdgeInsets get padHorizontalLow => EdgeInsets.symmetric(horizontal: heightXS);
  EdgeInsets get padHorizontalNormaly =>
      EdgeInsets.symmetric(horizontal: heightS);
  EdgeInsets get padHorizontalMedium =>
      EdgeInsets.symmetric(horizontal: heightM);
  EdgeInsets get padHorizontalLarge =>
      EdgeInsets.symmetric(horizontal: heightL);
  EdgeInsets get padHorizontalXLarge =>
      EdgeInsets.symmetric(horizontal: heightXL);
  EdgeInsets get padHorizontalXXLarge =>
      EdgeInsets.symmetric(horizontal: heightXXL);
  //
  EdgeInsets get padVerticalLow => EdgeInsets.symmetric(vertical: heightXS);
  EdgeInsets get padVerticalNormaly => EdgeInsets.symmetric(vertical: heightS);
  EdgeInsets get padVerticalMedium => EdgeInsets.symmetric(vertical: heightM);
  EdgeInsets get padVerticalLarge => EdgeInsets.symmetric(vertical: heightL);
  EdgeInsets get padVerticalXLarge => EdgeInsets.symmetric(vertical: heightXL);
  EdgeInsets get padVerticalXXLarge =>
      EdgeInsets.symmetric(vertical: heightXXL);
}

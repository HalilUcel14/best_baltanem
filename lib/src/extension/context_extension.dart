import 'dart:io';

import 'package:best_baltanem/src/constant/responsivity_constants.dart';
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
  double get width => size.width;
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
  double get widthXS => width * 0.01;
  double get widthS => width * 0.02;
  double get widthM => width * 0.04;
  double get widthL => width * 0.06;
  double get widthXL => width * 0.08;
  double get widthXXL => width * 0.1;
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

// Device Screen Type By Width(300-600-900)
// Values from https://flutter.dev/docs/development/ui/layout/building-adaptive-apps
extension ContextDeviceTypeExtension on BuildContext {
  bool get isSmallScreen =>
      witdh < ResponsivityConstants.instance.smallScreenSize ? true : false;
  bool get isNormalyScreen =>
      witdh >= ResponsivityConstants.instance.smallScreenSize &&
              witdh < ResponsivityConstants.instance.mediumScreenSize
          ? true
          : false;
  bool get isMediumScreen =>
      witdh >= ResponsivityConstants.instance.mediumScreenSize &&
              witdh < ResponsivityConstants.instance.largeScreenSize
          ? true
          : false;
  bool get isLargeScreen =>
      witdh >= ResponsivityConstants.instance.largeScreenSize ? true : false;
}

extension DurationExtension on BuildContext {
  Duration get durationXS => const Duration(milliseconds: 200);
  Duration get durationS => const Duration(milliseconds: 300);
  Duration get durationM => const Duration(milliseconds: 500);
  Duration get durationL => const Duration(milliseconds: 800);
  Duration get durationXL => const Duration(seconds: 1);
  Duration get durationXXL => const Duration(seconds: 2);
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

extension SizedBoxExtension on BuildContext{
  Widget get emptySizedWidthBoxLow
}

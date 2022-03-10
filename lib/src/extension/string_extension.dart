import 'package:flutter/material.dart';

import '../constant/regexp_constants.dart';

extension StringExtension on String {
  String get tlMoney => "$this TL";
  String get usdMoney => "$this USD";
  String get euroMoney => "$this EUR";
  String get chfMoney => "$this CHF";
  String get poundMoney => "$this £";
}

extension StringColorExtension on String {
  Color get color => Color(int.parse("0xff$this"));
}

extension StringValidator on String {
  bool get isNullOrEmpty => this == null || this.isEmpty;
  bool get isNotNullAndNotEmpty => !isNullOrEmpty;

  bool get isValidEmail =>
      RegExp(RegExpConstants.instance!.emailRegexp).hasMatch(this);
}

extension StringPathValidator on String {
  String pngPath(String path) => "$path/$this.png";
  String svgPath(String path) => "$path/$this.svg";
  String jpgPath(String path) => "$path/$this.jpg";
}

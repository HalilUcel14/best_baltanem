import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

  bool get isValidEmail => this != null
      ? RegExp(RegExpConstants.instance.emailRegexp).hasMatch(this)
      : false;
  bool get isValidPassword => this != null
      ? RegExp(RegExpConstants.instance.passwordRegexp).hasMatch(this)
      : false;
}

extension AuthorizationExtension on String {
  Map<String, dynamic> get beraer => {'Authırization': 'Bearer ${this}'};
}

extension LaunchExtension on String {
  Future<bool> get launchEmail => launch('mailto:$this');
  Future<bool> get launchPhone => launch('tel:$this');
  Future<bool> get launchWebsite => launch(this);

  Future<bool> launchWebsiteCuston({
    bool? forceSafariVC,
    bool forceWebView = false,
    bool enableJavaScript = false,
    bool enableDomStorage = false,
    bool universalLinksOnly = false,
    Map<String, String> headers = const <String, String>{},
    Brightness? statusBarBrightness,
    String? webOnlyWindowName,
  }) =>
      launch(
        this,
        forceSafariVC: forceSafariVC,
        forceWebView: forceWebView,
        enableDomStorage: enableDomStorage,
        enableJavaScript: enableJavaScript,
        universalLinksOnly: universalLinksOnly,
        headers:  headers,
        statusBarBrightness:  statusBarBrightness,
        webOnlyWindowName: webOnlyWindowName
      );
}

extension StringPathValidator on String {
  String pngPath(String path) => "$path/$this.png";
  String svgPath(String path) => "$path/$this.svg";
  String jpgPath(String path) => "$path/$this.jpg";
}

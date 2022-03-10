import 'package:flutter/material.dart';

import 'int_extension.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorSheme => theme.colorScheme;
}

extension SizeExtension on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get witdh => size.width;
  double get height => size.height;

  double dynamicHeight(double value) => height * value;
  double dynamicWidth(double value) => witdh * value;
}

extension OrientationExtension on BuildContext {
  Orientation get orientation => MediaQuery.of(this).orientation;
}

extension ColorExtension on BuildContext {
  Color get randomColor => Colors.primaries[17.randomValue];
}

extension PaddingExtension on BuildContext {
  double get padXS => height * 0.01;
  double get padS => height * 0.02;
  double get padM => height * 0.04;
  double get padL => height * 0.06;
  double get padXL => height * 0.08;
  double get padXXL => height * 0.1;
  //
  EdgeInsets get padAllLow => EdgeInsets.all(padXS);
  EdgeInsets get padAllNormaly => EdgeInsets.all(padS);
  EdgeInsets get padAllMedium => EdgeInsets.all(padM);
  EdgeInsets get padAllLarge => EdgeInsets.all(padL);
  EdgeInsets get padAllXLarge => EdgeInsets.all(padXL);
  EdgeInsets get padAllXXLarge => EdgeInsets.all(padXXL);
}

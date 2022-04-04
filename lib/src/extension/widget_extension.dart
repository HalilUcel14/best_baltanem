import 'package:flutter/cupertino.dart';

extension WidgetExtension on Widget {
  Widget toVisible(bool val, {double? height}) => val
      ? this
      : SizedBox(
          height: height,
        );
}

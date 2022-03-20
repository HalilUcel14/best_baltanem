import 'package:flutter/material.dart';

import '../../best_baltanem.dart';

class DynamicText extends StatelessWidget {
  final String text;
  final Color? colors;
  final String? fontFamily;
  final double? fontSize;
  //
  const DynamicText({
    Key? key,
    required this.text,
    this.colors,
    this.fontFamily,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color kTextColor = const Color(0xFF757575);
    String defaultFontFamily = "Muli";
    return Text(
      text,
      style: TextStyle(
        color: colors ?? kTextColor,
        fontFamily: fontFamily ?? defaultFontFamily,
        fontSize: context.dynamicHeight(fontSize ?? context.heightS),
      ),
    );
  }
}

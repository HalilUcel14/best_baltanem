import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

// class DynamicText extends StatelessWidget {
//   final String text;
//   final Color? colors;
//   final String? fontFamily;
//   final double? fontSize;
//   //
//   const DynamicText({
//     Key? key,
//     required this.text,
//     this.colors,
//     this.fontFamily,
//     this.fontSize,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Color kTextColor = const Color(0xFF757575);
//     String defaultFontFamily = "Muli";
//     return FittedBox(
//       child: Text(
//         text,
//         style: TextStyle(
//           color: colors ?? kTextColor,
//           fontFamily: fontFamily ?? defaultFontFamily,
//           fontSize: context.dynamicHeight(fontSize ?? context.heightS),
//         ),
//       ),
//     );
//   }
// }

Color kTextColor = const Color(0xFF757575);

class DynamicText extends FittedBox {
  DynamicText({
    Key? key,
    required String data,
    required BuildContext context,
    Color? mColor,
    String? fontFamily,
    double? fontSize,
  }) : super(
          key: key,
          child: Text(
            data,
            style: TextStyle(
              color: mColor ?? kTextColor,
              fontFamily: fontFamily,
              fontSize: context.dynamicHeight(fontSize ?? context.heightS),
            ),
          ),
        );
}

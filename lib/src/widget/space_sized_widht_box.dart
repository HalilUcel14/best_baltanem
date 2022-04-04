import 'package:flutter/material.dart';

import '../../best_baltanem.dart';

// class SpaceSizedWidthBox extends StatelessWidget {
//   final double width;
//   const SpaceSizedWidthBox({Key? key, required this.width})
//       : assert(width > 0 && width <= 1),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: context.width * width,
//     );
//   }
// }

class SpaceSizedWidhtBox extends SizedBox {
  SpaceSizedWidhtBox(
      {Key? key, required BuildContext context, required double height})
      : assert(height > 0 && height <= 1),
        super(key: key, width: context.dynamicWidth(height));
}

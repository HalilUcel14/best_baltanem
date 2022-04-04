import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

// class SpaceSizedHeightBox extends StatelessWidget {
//   final double height;
//   const SpaceSizedHeightBox({Key? key, required this.height})
//       : assert(height > 0 && height <= 1),
//         super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: context.height * height,
//     );
//   }
// }

class SpaceSizedHeightBox extends SizedBox {
  SpaceSizedHeightBox(
      {Key? key, required BuildContext context, required double height})
      : assert(height > 0 && height <= 1),
        super(key: key, height: context.dynamicHeight(height));
}

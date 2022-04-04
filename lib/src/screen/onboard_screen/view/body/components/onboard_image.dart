import 'package:flutter/material.dart';

import '../../../../../../best_baltanem.dart';

// class OnBoardBodyImage extends StatelessWidget {
//   final OnBoardModel model;
//   const OnBoardBodyImage({Key? key, required this.model}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: context.padHorizontalMedium,
//       child: Image.asset(
//         model.imagePath,
//         height: context.dynamicHeight(0.5),
//       ),
//     );
//   }
// }

class OnBoardBodyImage extends Padding {
  OnBoardBodyImage({
    Key? key,
    required BuildContext context,
    required OnBoardModel model,
  }) : super(
          key: key,
          padding: context.padHorizontalMedium,
          child: Image.asset(
            model.imagePath,
            height: context.dynamicHeight(0.5),
          ),
        );
}

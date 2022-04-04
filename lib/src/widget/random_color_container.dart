import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

// class RandomColorContainer extends StatelessWidget {
//   const RandomColorContainer({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: context.randomColor,
//     );
//   }
// }

class RandomColorContainer extends Container {
  RandomColorContainer({
    Key? key,
    required BuildContext context,
  }) : super(
          key: key,
          color: context.randomColor,
        );
}

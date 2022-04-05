import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

// import '../../../viewmodel/onboard_viewmodel.dart';

// class OnBoardPageIndicator extends StatelessWidget {
//   final OnBoardViewModel modelValue;
//   const OnBoardPageIndicator({Key? key, required this.modelValue})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: modelValue.onBoardItems.length,
//         itemBuilder: (context, index) {
//           return Observer(builder: (_) {
//             return Padding(
//               padding: context.padAllLow,
//               child: CircleAvatar(
//                 backgroundColor: modelValue.currentPage == index
//                     ? Colors.blue
//                     : Colors.blueAccent,
//                 radius: modelValue.currentPage == index ? 10 : 5,
//               ),
//             );
//           });
//         },
//       ),
//     );
//   }
// }

class OnBoardPageIndicator extends Expanded {
  OnBoardPageIndicator({
    Key? key,
    required BuildContext context,
    required OnBoardViewModel viewModel,
  }) : super(
          key: key,
          child: ListView.builder(
            itemCount: viewModel.onBoardItems.length,
            itemBuilder: (context, index) {
              return Observer(builder: (_) {
                return Padding(
                  padding: context.padAllLow,
                  child: CircleAvatar(
                    backgroundColor: viewModel.currentPage == index
                        ? Colors.blue
                        : Colors.blueAccent,
                    radius: viewModel.currentPage == index
                        ? context.dynamicHeight(0.015)
                        : context.dynamicHeight(0.005),
                  ),
                );
              });
            },
          ),
        );
}

import 'package:flutter/material.dart';

import '../../../../../../best_baltanem.dart';

class OnBoardBodyText extends Column {
  //
  static const double _titleHeightFontSize = 0.05;
  static const double _sizedBoxHeight = 0.02;
  static const double _subTitleHeightFontSize = 0.02;
  //
  OnBoardBodyText({
    Key? key,
    required BuildContext context,
    required OnBoardModel model,
  }) : super(key: key, children: <Widget>[
          _titleText(
            context,
            _titleHeightFontSize,
            model,
          ),
          SpaceSizedHeightBox(height: _sizedBoxHeight, context: context),
          _subTitleText(
            context,
            _subTitleHeightFontSize,
            model,
          )
        ]);

  static Text _titleText(
    BuildContext context,
    double _titleHeightFontSize,
    OnBoardModel model,
  ) {
    return Text(
      model.title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: const Color.fromARGB(255, 31, 3, 49),
        shadows: const [
          Shadow(
            blurRadius: 5,
            color: Colors.black45,
            offset: Offset(4, 4),
          ),
        ],
        fontSize: context.dynamicHeight(_titleHeightFontSize),
      ),
    );
  }

//
  static Padding _subTitleText(
    BuildContext context,
    double _subTitleHeightFontSize,
    OnBoardModel model,
  ) {
    return Padding(
      padding: context.padHorizontalMedium,
      child: Text(
        model.description,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black45,
          shadows: const [
            Shadow(
              blurRadius: 5,
              color: Colors.black26,
              offset: Offset(4, 4),
            ),
          ],
          fontSize: context.dynamicHeight(_subTitleHeightFontSize),
        ),
      ),
    );
  }
}

// class OnBoardBodyText extends StatelessWidget {
//   final OnBoardModel model;
//   const OnBoardBodyText({Key? key, required this.model}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     //
//     const double _titleHeightFontSize = 0.05;
//     const double _sizedBoxHeight = 0.02;
//     const double _subTitleHeightFontSize = 0.02;
//     //
//     return Column(
//       children: [
//         _titleText(context, _titleHeightFontSize),
//         SpaceSizedHeightBox(height: _sizedBoxHeight, context: context),
//         _subTitleText(context, _subTitleHeightFontSize)
//       ],
//     );
//   }

//   //
//   Text _titleText(BuildContext context, double _titleHeightFontSize) {
//     return Text(
//       model.title,
//       style: TextStyle(
//         fontWeight: FontWeight.bold,
//         color: const Color.fromARGB(255, 31, 3, 49),
//         shadows: const [
//           Shadow(
//             blurRadius: 5,
//             color: Colors.black45,
//             offset: Offset(4, 4),
//           ),
//         ],
//         fontSize: context.dynamicHeight(_titleHeightFontSize),
//       ),
//     );
//   }

//   //
//   Padding _subTitleText(BuildContext context, double _subTitleHeightFontSize) {
//     return Padding(
//       padding: context.padHorizontalMedium,
//       child: Text(
//         model.description,
//         textAlign: TextAlign.center,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           color: Colors.black45,
//           shadows: const [
//             Shadow(
//               blurRadius: 5,
//               color: Colors.black26,
//               offset: Offset(4, 4),
//             ),
//           ],
//           fontSize: context.dynamicHeight(_subTitleHeightFontSize),
//         ),
//       ),
//     );
//   }
// }

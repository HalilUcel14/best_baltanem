import 'package:flutter/material.dart';

import '../../../../../../best_baltanem.dart';
import '../../../../../constant/navigation_constants.dart';
import '../../../viewmodel/onboard_viewmodel.dart';

class OnBoardFloatingButton extends FloatingActionButton {
  OnBoardFloatingButton(
      {Key? key,
      required OnBoardViewModel viewModel,
      required BuildContext context,
      String? colorString,
      Widget? iconWidget})
      : super(
          key: key,
          onPressed: () {
            viewModel.completeToOnBoard(NavigationConstants.ONBOARD);
          },
          backgroundColor: colorString!.color,
          child: Padding(
            padding: context.padAllLow,
            child: iconWidget ?? const Icon(Icons.add),
          ),
        );
}



// class OnBoardFloatingButton extends StatelessWidget {
//   final OnBoardViewModel viewModel;
//   final String imgPath;
//   const OnBoardFloatingButton(
//       {Key? key, required this.imgPath, required this.viewModel})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Observer(
//       builder: (_) {
//         return FloatingActionButton(
//           backgroundColor: "c9a658".color,
//           onPressed: () {
//             Navigator.pushNamed(
//               context,
//               viewModel.pushName,
//             );
//           },
//           child: Padding(
//             padding: context.padAllLow,
//             child: SvgPicture.asset(
//               imgPath,
//               color: Colors.white,
//             ),
//           ),
//         );
//       },
//     );
//   }


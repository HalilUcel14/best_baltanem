import 'package:flutter/material.dart';

import '../../../../../../best_baltanem.dart';
import '../../../model/onboard_model.dart';

class OnBoardBodyImage extends StatelessWidget {
  final OnBoardModel model;
  const OnBoardBodyImage({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.padHorizontalMedium,
      child: Image.asset(
        model.imagePath,
        height: context.dynamicHeight(0.5),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../best_baltanem.dart';

class SpaceSizedHeightBox extends StatelessWidget {
  final double width;
  const SpaceSizedHeightBox({Key? key, required this.width})
      : assert(width > 0 && width <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.witdh * width,
    );
  }
}

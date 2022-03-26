import 'package:flutter/material.dart';

import '../../best_baltanem.dart';

class SpaceSizedWidthBox extends StatelessWidget {
  final double width;
  const SpaceSizedWidthBox({Key? key, required this.width})
      : assert(width > 0 && width <= 1),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.width * width,
    );
  }
}

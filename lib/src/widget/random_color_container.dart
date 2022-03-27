import 'package:flutter/material.dart';

import '../../best_baltanem.dart';

class RandomColorContainer extends StatelessWidget {
  const RandomColorContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.randomColor,
    );
  }
}

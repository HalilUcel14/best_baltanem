import 'package:flutter/material.dart';

import '../model/onboard_model.dart';
import 'onboard_view.dart';

class OnBoardTest extends StatelessWidget {
  const OnBoardTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardView(
      onBoardItems: defaultTestOnBoardList,
      navigatePushName: "Home",
    );
  }
}

const List<String> defaultImage = <String>[
  "assets/images/onboard/hu_onboard_1.png",
  "assets/images/onboard/hu_onboard_2.png",
  "assets/images/onboard/hu_onboard_3.png"
];

List<OnBoardModel> defaultTestOnBoardList = [
  OnBoardModel(
    title: "TOKOTO",
    description: "Welcome to Tokoto, Let's Shop!",
    imagePath: defaultImage[0],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description:
        "We help people connect with store around United State of America",
    imagePath: defaultImage[1],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description: "We show the easy way to shop. Just stay at home with us",
    imagePath: defaultImage[2],
  ),
];

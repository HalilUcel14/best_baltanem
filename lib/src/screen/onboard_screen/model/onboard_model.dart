class OnBoardModel {
  final String title;
  final String description;
  final String imagePath;

  OnBoardModel({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

const List<String> defaultImage = <String>[
  "assets/images/onboard/hu_onboard_1.png",
  "assets/images/onboard/hu_onboard_2.png",
  "assets/images/onboard/hu_onboard_3.png"
];

List<OnBoardModel> defaultOnBoardList = [
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

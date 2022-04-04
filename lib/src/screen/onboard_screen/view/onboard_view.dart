import 'package:flutter/material.dart';

import '../../../../best_baltanem.dart';
import '../viewmodel/onboard_viewmodel.dart';
import 'body/onboard_body.dart';

class OnBoardView extends StatelessWidget {
  final List<OnBoardModel> onBoardItems;
  const OnBoardView({
    Key? key,
    required this.onBoardItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardViewModel>(
      viewModel: OnBoardViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.onBoardListed(onboardListed: onBoardItems);
        model.init();
      },
      onPageBuilder: (BuildContext context, OnBoardViewModel value) => SafeArea(
        child: Scaffold(
          body: OnBoardBodyView(viewModel: value),
        ),
      ),
    );
  }
}

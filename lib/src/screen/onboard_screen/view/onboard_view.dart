import 'package:flutter/material.dart';

import '../../../../best_baltanem.dart';
import '../viewmodel/onboard_viewmodel.dart';
import 'body/onboard_body.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardViewModel>(
      viewModel: OnBoardViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
      },
      onPageBuilder: (BuildContext context, OnBoardViewModel value) =>
           SafeArea(
        child: Scaffold(
          body: OnBoardBodyView(viewModel: value),
        ),
      ),
    );
  }
}

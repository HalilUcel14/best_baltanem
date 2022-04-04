import 'package:best_baltanem/src/screen/onboard_screen/view/body/components/onboard_text.dart';
import 'package:flutter/material.dart';

import '../../../../../best_baltanem.dart';
import '../../viewmodel/onboard_viewmodel.dart';
import 'components/onboard_floating_button.dart';
import 'components/onboard_image.dart';
import 'components/onboard_page_indicator.dart';

class OnBoardBodyView extends StatelessWidget {
  final OnBoardViewModel viewModel;
  const OnBoardBodyView({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    const int _flexOneWidget = 7;
    const int _flexTwoWidget = 2;
    //
    return Padding(
      padding: context.padHorizontalNormaly,
      child: Column(
        children: [
          const Spacer(flex: 1),
          Expanded(
            child: buildPageView(viewModel: viewModel),
            flex: _flexOneWidget,
          ),
          const SpaceSizedHeightBox(height: 0.05),
          Expanded(
            child: skipAndIndicator(context: context, viewModel: viewModel),
            flex: _flexTwoWidget,
          ),
        ],
      ),
    );
  }

  Widget buildPageView({required OnBoardViewModel viewModel}) {
    return PageView.builder(
      itemCount: viewModel.onBoardItems.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBoardBodyImage(model: viewModel.onBoardItems[index]),
            const Spacer(),
            OnBoardBodyText(model: viewModel.onBoardItems[index]),
          ],
        );
      },
    );
  }

  Widget skipAndIndicator({
    required BuildContext context,
    required OnBoardViewModel viewModel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OnBoardPageIndicator(modelValue: viewModel),
        OnBoardFloatingButton(
          imgPath: "assets/images/button/right_arrow_2.svg",
          viewModel: viewModel,
        ),
      ],
    );
  }
}

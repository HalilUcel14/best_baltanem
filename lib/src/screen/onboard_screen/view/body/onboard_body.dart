import 'package:flutter/material.dart';

import '../../../../../best_baltanem.dart';

import 'components/onboard_floating_button.dart';
import 'components/onboard_image.dart';
import 'components/onboard_page_indicator.dart';
import 'components/onboard_text.dart';

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
          SpaceSizedHeightBox(context: context, height: 0.05),
          Expanded(
            child: skipAndIndicator(context: context, viewModel: viewModel),
            flex: _flexTwoWidget,
          ),
        ],
      ),
    );
  }
}

///
///
///
///
///
///
extension _OnBoardSubCode on OnBoardBodyView {
  Widget buildPageView({required OnBoardViewModel viewModel}) {
    return PageView.builder(
      itemCount: viewModel.onBoardItems.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnBoardBodyImage(
              model: viewModel.onBoardItems[index],
              context: context,
            ),
            const Spacer(),
            OnBoardBodyText(
              context: context,
              model: viewModel.onBoardItems[index],
            ),
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
        OnBoardPageIndicator(
          viewModel: viewModel,
          context: context,
        ),
        OnBoardFloatingButton(
          context: context,
          colorString: "c9a658",
          viewModel: viewModel,
        ),
      ],
    );
  }
}

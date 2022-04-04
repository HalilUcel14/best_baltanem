import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../best_baltanem.dart';

part 'onboard_viewmodel.g.dart';

class OnBoardViewModel = _OnBoardViewModelBase with _$OnBoardViewModel;

abstract class _OnBoardViewModelBase with Store, BaseViewModel {
  List<OnBoardModel> onBoardItems = [];
  //
  @observable
  int currentPage = 0;
  //
  @action
  void changeCurrentPage(int value) {
    currentPage = value;
  }

  //
  @action
  void onBoardListed({List<OnBoardModel>? onboardListed}) {
    if (onboardListed.isNullorEmpty) {
      onBoardItems = defaultOnBoardList;
    } else {
      onBoardItems = onboardListed!;
    }
  }

  //
  void completeToOnBoard(String path) async {
    await localeManager!.setBoolValue(PreferencesKeys.ONBOARD.toString(), true);
    navigationService!.navigateToPage(path: path);
  }

  //
  @override
  void setContext(BuildContext context) => this.context = context;
  //
  @override
  void init() {}
}

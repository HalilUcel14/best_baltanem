import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../best_baltanem.dart';

part 'onboard_viewmodel.g.dart';

class OnBoardViewModel = _OnBoardViewModelBase with _$OnBoardViewModel;

abstract class _OnBoardViewModelBase with Store, BaseViewModel {
  List<OnBoardModel> onBoardItems = [];
  String? pathName = "";
  //
  @observable
  int currentPage = 0;
  //
  @action
  void changeCurrentPage(int value) {
    currentPage = value;
  }

  @action
  void setPathName(String value) {
    pathName = value;
  }

  //
  @action
  void onBoardListed({List<OnBoardModel>? onboardListed}) {
    onBoardItems = onboardListed!;
  }

  //
  void completeToOnBoard() async {
    await localeManager!.setBoolValue(PreferencesKeys.onboard.toString(), true);
    navigationService!.navigateToPage(path: pathName ?? '/');
  }

  //
  @override
  void setContext(BuildContext context) => this.context = context;
  //
  @override
  void init() {}
}

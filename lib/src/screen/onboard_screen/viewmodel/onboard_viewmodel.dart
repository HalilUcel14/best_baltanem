import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../best_baltanem.dart';
import '../model/onboard_model.dart';

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
  void onBoardListed({List<OnBoardModel>? onboardListed}) {
    if (onboardListed.isNullorEmpty) {
      onBoardItems = defaultOnBoardList;
    } else {
      onBoardItems = onboardListed!;
    }
  }

  //
  @override
  void setContext(BuildContext context) => this.context = context;
  //
  @override
  void init() {}
}

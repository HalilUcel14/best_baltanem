import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

abstract class BaseViewModel {
  BuildContext? context;
  LocaleManager? localeManager = LocaleManager.instance;
  NavigationService? navigationService = NavigationService.instance;

  void setContext(BuildContext context);

  void init();
}

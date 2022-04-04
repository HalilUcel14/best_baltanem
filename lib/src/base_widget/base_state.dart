import 'package:best_baltanem/best_baltanem.dart';
import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dynamicHeight(double value) => context.dynamicHeight(value);
  double dynamicWidth(double value) => context.dynamicWidth(value);
}

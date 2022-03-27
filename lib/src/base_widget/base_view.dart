import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'base_statefull.dart';

class BaseView<T extends Store> extends StatefulWidget {
  const BaseView(
      {Key? key,
      required this.viewModel,
      this.onModelReady,
      this.onDispose,
      required this.onPageBuilder})
      : super(key: key);

  final T viewModel;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;
  final Widget Function(BuildContext context, T value) onPageBuilder;

  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState extends BaseStateful<BaseView> {
  @override
  void initState() {
    super.initState();
    widget.onModelReady != null ? widget.onModelReady!(widget.viewModel) : null;
    //widget.onModelReady ?? widget.onModelReady!(widget.viewModel);
  }

  @override
  void dispose() {
    super.dispose();
    widget.onDispose != null ? widget.onDispose! : null;
    //widget.onDispose ?? widget.onDispose;
  }

  @override
  Widget build(BuildContext context) {
    return widget.onPageBuilder(context, widget.viewModel);
  }
}

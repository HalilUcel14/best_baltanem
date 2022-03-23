import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:best_baltanem/best_baltanem.dart';

class AnimatedOnboardScreen extends StatefulWidget {
  //
  final String routeName;
  final Duration duration;
  final Widget child;
  //
  const AnimatedOnboardScreen(
      {Key? key,
      required this.routeName,
      required this.duration,
      required this.child})
      : super(key: key);

  @override
  State<AnimatedOnboardScreen> createState() => _AnimatedOnboardScreenState();
}

class _AnimatedOnboardScreenState extends State<AnimatedOnboardScreen>
    with SingleTickerProviderStateMixin {
  //

  late AnimationController controller;
  bool get isForwardAnimation =>
      controller.status == AnimationStatus.forward ||
      controller.status == AnimationStatus.completed;
  //
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      value: 0,
      duration: widget.duration,
      reverseDuration: widget.duration,
      vsync: this,
    )..addStatusListener((status) {
        setState(() {});
      });

    animationForward();
  }

  void animationForward() async {
    if (controller.status != AnimationStatus.completed) {
      await controller.forward();
    }
    if (controller.status == AnimationStatus.completed) {
      await controller.reverse();
      Navigator.pushNamed(context, widget.routeName);
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: context.dynamicHeight(0.5),
          minWidth: context.dynamicWidth(0.5),
        ),
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) => FadeScaleTransition(
            animation: controller,
            child: child,
          ),
          child: Visibility(
            visible: controller.status != AnimationStatus.dismissed,
            child: widget.child,
          ),
        ),
      ),
    );
  }
}

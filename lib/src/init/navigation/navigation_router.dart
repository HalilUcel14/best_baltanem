import 'package:flutter/material.dart';

class NavigationRoute {
  static NavigationRoute? _instance;

  static NavigationRoute? get instance {
    _instance ??= NavigationRoute._init();
    return _instance;
  }
   
  NavigationRoute._init();
  //
  static const String TEST_VIEW = "/test";
  // 
  Route<dynamic> myGenerateRoute(RouteSettings args) {
    switch (args.name) {
      case TEST_VIEW:
      //  return normalyNavigate(const TestView());
      default:
        return normalyNavigate(const NotFoundNavigation());
    }
  }

  MaterialPageRoute normalyNavigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}

class NotFoundNavigation extends StatelessWidget {
  const NotFoundNavigation({Key? key}) : super(key: key);
  final String _notFound = "Not Found";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(_notFound),
    );
  }
}

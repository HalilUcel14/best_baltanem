import 'package:flutter/material.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  //
  static const String TEST_VIEW = "/test";
  //

  Route<dynamic> myGenerateRoute(RouteSettings args) {
    switch (args.name) {
      case TEST_VIEW:
      //  return normalyNavigate(const TestView());
      default:
        return MaterialPageRoute(
          builder: (context) => const NotFoundNavigation(),
        );
    }
  }

  MaterialPageRoute normalyNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
      builder: (context) => widget,
      // analytciste görülecek olan sayfa ismi için pageName veriyoruz.
      settings: RouteSettings(name: pageName),
    );
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

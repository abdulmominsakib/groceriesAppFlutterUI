import 'package:flutter/cupertino.dart';

import '../pages/home/home_screen.dart';
import '../pages/intro/intro_screen.dart';
import 'unknown_page.dart';

class AppRoutes {
  static const initial = '/';
  static const home = '/home';
}

class RouteHandler {
  static Route? handle(RouteSettings settings) {
    final route = settings.name;
    // final args = settings.arguments;
    switch (route) {
      case AppRoutes.initial:
        return CupertinoPageRoute(builder: (_) => const IntroScreen());

      case AppRoutes.home:
        return CupertinoPageRoute(builder: (_) => const HomeScreen());

      default:
        return errorRoute();
    }
  }

  static Route? errorRoute() =>
      CupertinoPageRoute(builder: (_) => const UnknownPage());
}

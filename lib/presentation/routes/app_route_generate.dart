import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/home_screen.dart';

class AppRouteGenerate {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(builder: (ctx) => const HomeScreen());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return const Scaffold(
        body: Center(
          child: Text('Something Error'),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_assignment_fengo/presentation/routes/routes.dart';
import 'package:flutter_assignment_fengo/presentation/screens/home_screen/home_screen.dart';
import 'package:flutter_assignment_fengo/presentation/screens/success_screen/success_screen.dart';

class AppRouteGenerate {
  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (ctx) => const HomeScreen());
      case Routes.successScreen:
        return MaterialPageRoute(builder: (ctx) => const SuccessScreen());

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

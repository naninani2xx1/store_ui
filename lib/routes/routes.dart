import 'package:flutter/material.dart';
import 'package:store_ui/routes/constanst.dart';
import 'package:store_ui/src/ui/home_ui.dart';
import 'package:store_ui/src/ui/onboarding_ui.dart';

/// It's a class that contains a static GlobalKey of type NavigatorState, a static String called
/// initRoute, and a static Route of type dynamic called onGenerateRoute
class AppRoutes {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static String initRoute = homeUI;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardingUI:
        return MaterialPageRoute(
          builder: (_) => const OnboardingUI(),
          settings: settings,
        );
      case homeUI:
        return MaterialPageRoute(
          builder: (_) => const HomeUI(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}

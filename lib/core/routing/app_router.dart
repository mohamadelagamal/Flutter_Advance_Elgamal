import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/features/login/ui/screen/login_screen.dart';
import 'package:flutter_advance_elgamal/features/onboarding/ui/screen/onboarding_screen.dart';
import 'package:flutter_advance_elgamal/main.dart';
import 'routes.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => Container());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
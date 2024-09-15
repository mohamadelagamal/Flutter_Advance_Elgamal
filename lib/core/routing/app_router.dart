import 'package:flutter/material.dart';
import 'package:flutter_advance_elgamal/features/home/ui/screen/home_screen.dart';
import 'package:flutter_advance_elgamal/features/login/ui/screen/login_screen.dart';
import 'package:flutter_advance_elgamal/features/onboarding/ui/screen/onboarding_screen.dart';
import 'package:flutter_advance_elgamal/features/sign_up/logic/cubit/sign_up_cubit.dart';
import 'package:flutter_advance_elgamal/features/sign_up/ui/screens/sign_up_screen.dart';
import '../../features/login/logic/cubit/login_cubit.dart';
import '../di/dependency_injection.dart';
import 'routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
              child: const LoginScreen(),
            ));

      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signUpScreen:
        return MaterialPageRoute(builder: (_) =>
            BlocProvider(
              create: (context) => getIt<SignUpCubit>(),
              child: const SignUpScreen(),
            ));

      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}

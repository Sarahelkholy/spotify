import 'package:flutter/material.dart';
import 'package:spotify/core/routing/routes.dart';
import 'package:spotify/features/auth/ui/choose_login_or_signup_screen.dart';
import 'package:spotify/features/intro/ui/choose_mode_screen.dart';
import 'package:spotify/features/intro/ui/get_started_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.getStartedScreen:
        return MaterialPageRoute(builder: (_) => const GetStartedScreen());
      case Routes.chooseModeScreen:
        return MaterialPageRoute(builder: (_) => const ChooseModeScreen());
      case Routes.chooseLoginOrSignupScreen:
        return MaterialPageRoute(
          builder: (_) => const ChooseLoginOrSignupScreen(),
        );

      default:
        return null;
    }
  }
}

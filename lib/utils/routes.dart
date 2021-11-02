import 'package:flutter/material.dart';
import '../screens/splash_screen.dart';
import '../screens/register_screen.dart';
import '../screens/login_screen.dart';


class RouteManager {
  static const String splashScreen = "/";
  static const String registerScreen = "/registerScreen";
  static const String loginScreen = "/loginScreen";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case registerScreen:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );

      case loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );

      default:
        throw const FormatException("Invalid Route!");
    }
  }
}

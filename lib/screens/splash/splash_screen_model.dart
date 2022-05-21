import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/splash/splash_screen.dart';

class SplashScreenModel extends BaseViewModel {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SplashScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  initialise(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, '/welcome');
    });
  }
}

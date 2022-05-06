import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/welcome_screen/welcome_screen.dart';

class WelcomeScreenModel extends MainViewModel {
  static const String routeName = '/welcome';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const WelcomeScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/log_in_screen/log_in_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/service/auth_service.dart';

class LogInScreenModel extends MainViewModel {
  static const String routeName = '/login';
  TextEditingController controllerMail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  final AuthService _authService = AuthService();

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LogInScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  signIn() {
    _authService.signIn(
        controllerMail.text.trim(), controllerPassword.text.trim());
  }
}

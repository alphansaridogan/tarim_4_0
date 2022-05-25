import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/sing_up_screen/sing_up_screen.dart';
import 'package:tarim_4_0/service/auth_service.dart';

class SingUpScreenModel extends MainViewModel {
  AuthService _authService = AuthService();
  static const String routeName = '/sing_up';

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerPasswordContol = TextEditingController();

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SingUpScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  void createdPerson() {
    _authService.createPerson(controllerName.text.trim(),
        controllerEmail.text.trim(), controllerPassword.text.trim());
  }
}

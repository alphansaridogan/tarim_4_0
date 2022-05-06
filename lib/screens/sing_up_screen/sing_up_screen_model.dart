import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/sing_up_screen/sing_up_screen.dart';

class SingUpScreenModel extends MainViewModel {
  static const String routeName = '/sing_up';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SingUpScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

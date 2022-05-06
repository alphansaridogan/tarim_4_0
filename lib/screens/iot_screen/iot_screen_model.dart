import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';

class IotScreenModel extends MainViewModel {
  static const String routeName = '/iot';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const IotScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
}

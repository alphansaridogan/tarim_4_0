import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen.dart';

class NewCropScreenModel extends MainViewModel {
  static const String routeName = '/new_crop';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const NewCropScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  List<String> cities = ["Ankara", "İstanbul"];
  List<String> counties = ["Fatih", "Esenler"];
  List<String> products = ["Üzüm", "Elma"];
  TextEditingController controllerCrop = TextEditingController();
  String? city;
  String? conty;
  String? product;
  double cultivationArea = 6.0;
}

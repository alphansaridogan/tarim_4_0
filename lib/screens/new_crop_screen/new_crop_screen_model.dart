import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen.dart';
import 'package:tarim_4_0/service/status_service.dart';

class NewCropScreenModel extends MainViewModel {
  static const String routeName = '/new_crop';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const NewCropScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  StatusService _statusService = StatusService();
  List<String> cities = ["Ankara", "İstanbul"];
  List<String> counties = ["Fatih", "Esenler"];
  List<String> products = ["Üzüm", "Elma"];
  TextEditingController controllerCultivationArea = TextEditingController();
  String? city;
  String? county;
  String? product;
  double cultivationArea = 6.0;
  

  String setProduct(String? value) {
    setBusy(true);
    return product = value!;
  }

  String setCities(String? value) {
    setBusy(true);
    return city = value!;
  }

  String setContry(String? value) {
    setBusy(true);
    return county = value!;
  }

  double setCultivationArea(double? value) {
    setBusy(true);
    return cultivationArea = value!;
  }

  newCrop() {
    _statusService.addStatus(
        city!, county!, product!,cultivationArea);
  }
}

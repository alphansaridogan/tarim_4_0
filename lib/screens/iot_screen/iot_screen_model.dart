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

  List<String> text = [
    "Gereksiz sulama masraflarından ve su israfından kurtarır.",
    "Eksik ve fazla sulama nedeniyle oluşan ürün kayıplarının önüne geçer, maksimum verimde hasat yapmanızı sağlar.",
    "Tarım yaptığınız arazinin nemini, sıcaklığını, ph gibi hayati verilerini anlık olarak telefonunuzdan takip etmenizi sağlar.",
    "Sistem toprağınızı her dakika analiz ettiği için size daha özelleştirilmiş bir öneri sistemi sunar.",
  ];
}

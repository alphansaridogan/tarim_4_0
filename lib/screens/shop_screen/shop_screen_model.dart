import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen.dart';

class ShopScreenModel extends MainViewModel {
  static const String routeName = '/shop';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ShopScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  List<dynamic> product = [
    {
      'ID': 0,
      'adi': 'Sıvı Kükürt',
      'urlImage':
          'https://egppanel.gubretas.com.tr/Gubretas/ws/products/120/041debe1626e4fd0a9d954ee9bee7c87/TURKAN_S-80.png',
      'brand': 'TURKSAN S-80',
      'measurement': 5,
      'price': 200,
    },
    {
      'ID': 1,
      'adi': 'Katı Kükürt',
      'urlImage':
          'https://www.gubretasbahcem.com.tr/Uploads/UrunResimleri/buyuk/kukurt-d-100-50-kg-5292.jpg',
      'brand': 'TURKSAN S-90',
      'measurement': 7,
      'price': 300,
    },
  ];
  List a = [1, 2, 3, 4, 5];
}

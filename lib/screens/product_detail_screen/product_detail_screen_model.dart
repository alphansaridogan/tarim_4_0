import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/product_detail_screen/product_detail_screen.dart';

class ProductDetailModel extends MainViewModel {
  static const String routeName = '/product_detail';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) =>  ProductDetail(productId: 0),
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
      'description':
          'TURKAN S-80: Elementel S formundaki sıvı kükürt, toprak pH’ını düzenleyerek toprak ıslahında kullanılan bir üründür. Topraktaki kirecin çözünmesini sağlar . Toprak tuzluluğunu önler ve azaltır. Yüksek pH’dan dolayı bitkinin alamadığı makro ve mikro elementlerin alımını kolaylaştırır. Bitkinin ve toprağın kükürt eksikligini giderir. Her çeşit sebze, meyve ve ekim alanlarında kullanılabilir.'
    },
    {
      'ID': 1,
      'adi': 'Katı Kükürt',
      'urlImage':
          'https://www.gubretasbahcem.com.tr/Uploads/UrunResimleri/buyuk/kukurt-d-100-50-kg-5292.jpg',
      'brand': 'TURKSAN S-90',
      'measurement': 7,
      'price': 300,
      'description':
          'TURKAN S-90: Elementel S formundaki sıvı kükürt, toprak pH’ını düzenleyerek toprak ıslahında kullanılan bir üründür. Topraktaki kirecin çözünmesini sağlar . Toprak tuzluluğunu önler ve azaltır. Yüksek pH’dan dolayı bitkinin alamadığı makro ve mikro elementlerin alımını kolaylaştırır. Bitkinin ve toprağın kükürt eksikligini giderir. Her çeşit sebze, meyve ve ekim alanlarında kullanılabilir.'
    },
  ];
}

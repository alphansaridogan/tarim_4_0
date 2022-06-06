import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/screens.dart';

class MainViewModel extends BaseViewModel {
  init() {}

  static const String routeName = '/MainView';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => MainView(),
      settings: const RouteSettings(name: routeName),
    );
  }

  final pageController = PageController();

  int currentPage = 0;

  int currentPageFunc(int index) {
    return currentPage = index;
  }

  int pageControl(int index) {
    pageController.jumpToPage(index);
    return currentPage = index;
  }

  page(int index) {
    return currentPage = index;
  }

  List<dynamic> agriculturalProducts = [
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
      'adi': 'Çinko Demir',
      'urlImage':
          'https://egppanel.gubretas.com.tr/Gubretas/ws/products/133/14c528a1096342e1aaf96a9bc5b6ef58/DEZ%C4%B0N.png',
      'brand': 'DEZİN',
      'measurement': 7,
      'price': 300,
      'description':
          'Bitkilerin hem çinko hem de demir ihtiyacını karşılayan besin çözeltisidir. Her iki iz elementinin de gizli ya da açık noksanlığının görüldüğü durumlar için ideal bir gübredir. Bitki boyunu, gövde, yaprak ve dal gelişimini arttırır. Bodur gelişimi önler. Yeterli ve sağlıklı vejetatif aksam medyana getirir. Azot ve magnezyumun etkinliğini arttırır. Yaprak ve meyve dökülmelerini en aza indirir, verim ve kalite kayıplarının önüne geçer. DEZIN organik tarımda kullanım sertifikasına sahiptir. '
    },
  ];
}

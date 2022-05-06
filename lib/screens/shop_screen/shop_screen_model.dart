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
}

import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  static const String routeName = '/shop';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const ShopScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0BAC1B),
        title: const Text('Mağaza'),
      ),
    );
  }
}
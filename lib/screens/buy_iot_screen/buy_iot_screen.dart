import 'package:flutter/material.dart';

class BuyIotScreen extends StatelessWidget {
  static const String routeName = '/buy_iot';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const BuyIotScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const BuyIotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tarım 4.0 Satın Al'),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class IotScreen extends StatelessWidget {
  static const String routeName = '/iot';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const IotScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const IotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0BAC1B),
        title: const Text('Tarım 4.0'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/buy_iot');
            }, ///örnek geçiş olsun diye koydum
            child: const Text('Satın Al')),
      ),
    );
  }
}
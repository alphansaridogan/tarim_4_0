import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  /// buradan
  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: const RouteSettings(name: routeName),
    );
  }
/// buraya kadar her ekleyeceğiniz sayfaya route kurmak için benzerini ekleyeceksiniz

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0BAC1B),
        title: const Text('Ana Sayfa'),
      ),
    );
  }
}

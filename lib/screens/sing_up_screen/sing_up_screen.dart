import 'package:flutter/material.dart';

class SingUpScreen extends StatelessWidget {
  static const String routeName = '/sing_up';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SingUpScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Üye Ol'),
      ),
    );
  }
}

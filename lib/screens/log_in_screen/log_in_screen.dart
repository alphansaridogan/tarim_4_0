import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = '/login';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const LogInScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Giriş Yap'),
      ),
    );
  }
}

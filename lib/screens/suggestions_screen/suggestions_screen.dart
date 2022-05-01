import 'package:flutter/material.dart';

class SuggestionsScreen extends StatelessWidget {
  static const String routeName = '/suggestions';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SuggestionsScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const SuggestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0BAC1B),
        title: const Text('Öneriler'),
      ),
    );
  }
}

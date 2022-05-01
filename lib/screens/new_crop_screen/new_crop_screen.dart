import 'package:flutter/material.dart';

class NewCropScreen extends StatelessWidget {
  static const String routeName = '/new_crop';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const NewCropScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }
  const NewCropScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yeni Ekin Bilgileri'),
      ),
    );
  }
}

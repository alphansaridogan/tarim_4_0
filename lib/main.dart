import 'package:flutter/material.dart';
import 'package:tarim_4_0/config/app_router.dart';
import 'package:tarim_4_0/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarım 4.0',
      theme: ThemeData(
        primaryColor: const Color(0xFF0BAC1B),
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: MainView.routeName,
    );
  }
}


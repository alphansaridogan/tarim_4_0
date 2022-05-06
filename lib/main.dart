import 'package:flutter/material.dart';
import 'package:tarim_4_0/config/app_router.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/splash/splash_screen_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarım 4.0',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants.green,
        scaffoldBackgroundColor: Constants.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Constants.green,
        ),
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: SplashScreenModel.routeName,
    );
  }
}

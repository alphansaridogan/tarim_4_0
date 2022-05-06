import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';

class HomeScreenModel extends MainViewModel {

   /// buradan
 static const String routeName = '/home';
 static Route route() {
   return MaterialPageRoute(
     builder: (_) => const HomeScreen(),
     settings: const RouteSettings(name: routeName),
   );
 }
 /// buraya kadar her ekleyeceğiniz sayfaya route kurmak için benzerini ekleyeceksiniz
}

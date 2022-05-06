import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';

class BuyIotScreenModel extends MainViewModel {
  /* MainViewModeldan kalıtım alıyor çünkü bütün reposito gibi birden 
  fazla sayfada kullanacağımız yapılaraı orada ayağa kaldırıp bu 
  sayfalarda tekrar tanımlamadan kullanabileceğiz. */
  static const String routeName = '/buy_iot';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const BuyIotScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

}

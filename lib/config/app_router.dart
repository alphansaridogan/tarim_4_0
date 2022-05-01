import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen.dart';
import 'package:tarim_4_0/screens/log_in_screen/log_in_screen.dart';
import 'package:tarim_4_0/screens/main_view/main_view.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen.dart';
import 'package:tarim_4_0/screens/sing_up_screen/sing_up_screen.dart';
import 'package:tarim_4_0/screens/welcome_screen/welcome_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('The Route is: ${settings.name}');

    switch (settings.name) {
      case '/':
        return MainView.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case BuyIotScreen.routeName:
        return BuyIotScreen.route();
      case SuggestionsScreen.routeName:
        return SuggestionsScreen.route();
      case IotScreen.routeName:
        return IotScreen.route();
      case LogInScreen.routeName:
        return LogInScreen.route();
      case NewCropScreen.routeName:
        return NewCropScreen.route();
      case ShopScreen.routeName:
        return ShopScreen.route();
      case SingUpScreen.routeName:
        return SingUpScreen.route();
      case WelcomeScreen.routeName:
        return WelcomeScreen.route();
        break;
      default:
        return _erorRoute();
    }
  }



  static Route _erorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(appBar: AppBar(title: const Text('error'),),),
      settings: const RouteSettings(name: '/error'),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen_model.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen_model.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen_model.dart';
import 'package:tarim_4_0/screens/log_in_screen/log_in_screen_model.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen_model.dart';
import 'package:tarim_4_0/screens/product_detail_screen/product_detail_screen_model.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen_model.dart';
import 'package:tarim_4_0/screens/sing_up_screen/sing_up_screen_model.dart';
import 'package:tarim_4_0/screens/splash/splash_screen_model.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen_model.dart';
import 'package:tarim_4_0/screens/welcome_screen/welcome_screen_model.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {

    switch (settings.name) {
      case SplashScreenModel.routeName:
        return SplashScreenModel.route();
      case MainViewModel.routeName:
        return MainViewModel.route();
      case HomeScreenModel.routeName:
        return HomeScreenModel.route();
      case BuyIotScreenModel.routeName:
        return BuyIotScreenModel.route();
      case SuggestionsScreenModel.routeName:
        return SuggestionsScreenModel.route();
      case IotScreenModel.routeName:
        return IotScreenModel.route();
      case LogInScreenModel.routeName:
        return LogInScreenModel.route();
      case NewCropScreenModel.routeName:
        return NewCropScreenModel.route();
      case ShopScreenModel.routeName:
        return ShopScreenModel.route();
      case SingUpScreenModel.routeName:
        return SingUpScreenModel.route();
      case WelcomeScreenModel.routeName:
        return WelcomeScreenModel.route();
      case ProductDetailModel.routeName:
        return ProductDetailModel.route();
      default:
        return _erorRoute();
    }
  }

  static Route _erorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
      ),
      settings: const RouteSettings(name: '/error'),
    );
  }
}

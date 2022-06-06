import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/product_detail_screen/product_detail_screen.dart';

class ProductDetailModel extends MainViewModel {
  static const String routeName = '/product_detail';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => ProductDetail(productId: 0),
      settings: const RouteSettings(name: routeName),
    );
  }

  }

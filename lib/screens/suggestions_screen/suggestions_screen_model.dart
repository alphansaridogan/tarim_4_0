import 'package:flutter/material.dart';
import 'package:tarim_4_0/screens/main_view/main_view_model.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen.dart';

class SuggestionsScreenModel extends MainViewModel {
  static const String routeName = '/suggestions';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const SuggestionsScreen(),
      settings: const RouteSettings(name: routeName),
    );
  }

  String? product;
  List<String> products = ['Üzüm', 'Elma'];
  List productDetail = [
    {
      'Üzüm':
          'Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %35 civarında tutulması önerilir.Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.'
    },
    {
      'Elma':
          'Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %35 civarında tutulması önerilir.Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.'
    }
  ];

  bulma(String product) {}
}

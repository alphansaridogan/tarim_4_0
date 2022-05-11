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
      'ID': 0,
      'Adi': 'Üzüm',
      'urlImage':
          'https://www.cagri.com/Uploads/UrunResimleri/uzum-siyah-kg-cf9d.jpg',
      'description1':
          'Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %35 civarında tutulması önerilir.',
      'description2':
          'Elmaaa: Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.'
    },
    {
      'ID': 1,
      'Adi': 'Elma',
      'urlImage':
          'https://fidansepetim.com/uploads/p/p/3-Yas-Asili-Granny-Smith-Elma-Fidani-Yesil-Mayhos_1.jpg',
      'description1':
          'Elma: Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %35 civarında tutulması önerilir.Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.',
      'description2':
          'Elmaaa: Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %45 civarında tutulması önerilir.Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.'
    
    }
  ];

  bulma(String? product) {
    for (var i = 0; i < productDetail.length; i++) {
      if (product != null && product == productDetail[i]['Adi']) {
        return i;
      }
    }
  }
}

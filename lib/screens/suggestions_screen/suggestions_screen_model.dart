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

  List<String> products = ['Üzüm', 'Elma'];
  String? agriculturalProduct = "Üzüm";

  List productDetail = [
    {
      'ID': 0,
      'Adi': 'Üzüm',
      'urlImage':
          'https://www.cagri.com/Uploads/UrunResimleri/uzum-siyah-kg-cf9d.jpg',
      'description1':
          'Hava sıcaklıklarına bağlı olarak bu haftatoprak nemini %35 civarında tutulması önerilir.',
      'description2':
          'Küllenme hastalığı riskini önlemek için 15günde bir sıvı kükürt ile ilaçlama yapılmalıdır. İstenmeyen sürgünler budanmalı ana omcanın hava alması sağlanmalıdır.',
      'moisture': '%12-40',
      'heat': '18-24C',
      'microorganism': 'Vitis vinifera',
    },
    {
      'ID': 1,
      'Adi': 'Elma',
      'urlImage':
          'https://fidansepetim.com/uploads/p/p/3-Yas-Asili-Granny-Smith-Elma-Fidani-Yesil-Mayhos_1.jpg',
      'description1':
          'Bahçenin sürümüne özen gösterilmeli ve ağaç gövdelerine haziran ayı başlarında oluklu mukavvadan tuzak bantlar sarılmalı, bunlara gelen larvalar haftalık kontrollerle imha edilmelidir.',
      'description2':
          'Elma ağaçlarının altına dökülen meyveler toplanıp uzaklaştırılmalı, ambalaj ve depolama yerleri elma bahçelerinin kenarına kurulmamalıdır.',
      'moisture': '%25-50',
      'heat': '8-30C',
      'microorganism': 'Elma kurdu',
    }
  ];

  productAssignment(String? product) {
    for (var i = 0; i < productDetail.length; i++) {
      if (product != null && product == productDetail[i]['Adi']) {
        return i;
      }
    }
    notifyListeners();
  }

  String setProduct(String? value) {
    setBusy(true);
    return agriculturalProduct = value!;
  }
}

import 'dart:convert';

import 'iot_info_model.dart';
import 'package:http/http.dart' as http ;

class IotService {
  final String IotUrl = 'https://api.thingspeak.com/channels/1743287/feeds.json?results=2';



  Future<IotInfoModel?> fetchInfo() async {
    var res = await http.get(Uri.parse(IotUrl));
    if(res.statusCode == 200 ) {
      var jsonBody = IotInfoModel.fromJson(jsonDecode(res.body));
      return jsonBody;
    } else {
      print('Bağlantıda bir hata oldu => ${res.statusCode}');
    }


  }

}


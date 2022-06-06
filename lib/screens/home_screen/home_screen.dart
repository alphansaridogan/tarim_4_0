import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen_model.dart';

import '../../model/AdditionalInfo.dart';
import '../../model/current_weather.dart';
import '../../model/weather_model.dart';
import '../../service/weather_info_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherService weatherService = WeatherService();
  Weather? data;

  Future<void> getData() async{
    data = await weatherService.getWeather('Izmir');
  }


  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeScreenModel>.reactive(
      onModelReady: (model) => model.init(),
      viewModelBuilder: () => HomeScreenModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Ana Sayfa'),
        ),
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot){
              if (snapshot.connectionState == ConnectionState.done){
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset('assets/${data!.icon}.png')),
                    Text('${data!.durum}'),
                    CurrentWeather('${data!.icon}',
                        '${data!.temp}', '${data!.cityName}'),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text('Ek Bilgiler',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 10,
                    ),
                    AdittionalInfo(
                        '${data!.wind_kmh}',
                        '${data!.humidity}',
                        '${data!.feels_like}',
                        '${data!.clouds}'),
                  ],
                );
              }
              return Container();
            }
        ),
      ),
    );
  }
}

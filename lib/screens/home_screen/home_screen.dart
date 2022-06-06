import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/drop_down_widget.dart';
import 'package:tarim_4_0/config/widget/news_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/home_screen/home_screen_model.dart';

import '../../model/AdditionalInfo.dart';
import '../../config/widget/current_weather.dart';
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
  var Cities=["Izmir", "Istanbul", "Ankara"];
  String dropdownvalue = 'Izmir';

  Future<void> getData() async {
    data = await weatherService.getWeather('${dropdownvalue}');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<HomeScreenModel>.reactive(
      onModelReady: (model) => model.init(),
      viewModelBuilder: () => HomeScreenModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Ana Sayfa'),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              FutureBuilder(
                future: getData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
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
                        CurrentWeather('${data!.icon}', '${data!.temp}'),
                        DropdownButton(
                          value: dropdownvalue,
                            icon: Icon(Icons.keyboard_arrow_down),
                          items: Cities.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                            );
                          }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              }
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          'Ek Bilgiler',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),
                        const SizedBox(
                          height: 10,
                        ),
                        AdittionalInfo('${data!.wind_kmh}', '${data!.humidity}',
                            '${data!.feels_like}', '${data!.clouds}'),
                      ],
                    );
                  }
                  return Container();
                },
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                "Haberler",
                style: Constants.headline1.apply(color: Constants.black),
              ),
              const Divider(
                endIndent: 10,
                indent: 20,
                thickness: 5,
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: model.newsDetail
                        .map((news) => Padding(
                              padding:
                                  const EdgeInsets.only(right: 10.0, left: 10),
                              child: NewsWidget(
                                  url: news["urlImage"],
                                  text: news["description1"],
                                  size: size),
                            ))
                        .toList()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

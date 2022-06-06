import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/graphics/soil_moisture_widget.dart';
import 'package:tarim_4_0/config/widget/graphics/template_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen_model.dart';

import '../../iot_informations/iot_info_model.dart';
import '../../iot_informations/iot_info_service.dart';

class BuyIotScreen extends StatefulWidget {
  const BuyIotScreen({Key? key}) : super(key: key);

  @override
  State<BuyIotScreen> createState() => _BuyIotScreenState();
}

class _BuyIotScreenState extends State<BuyIotScreen> {
  final IotService _service = IotService();
  List<IotInfoModelFeeds?>? infos;

  var OrtamSicakikStr = "".obs;
  var OrtamNemStr = "".obs;
  var ToprakNemStr = "".obs;
  var Saat = "".obs;
  var OrtamNemDouble;
  var OrtamSicaklikDouble;
  var ToprakNemDouble;
  var OrtamSicaklik;
  var OrtamNem;
  var ToprakNem;
  double currentSliderValue = 20;

  @override
  void initState() {
    getir();
    _service.fetchInfo();
    Timer.periodic(const Duration(seconds: 10), (timer) => getir());
    super.initState();
  }

  void getir() {
    _service.fetchInfo().then((value) {
      if (value != null && value.feeds != null) {
        setState(() {
          infos = value.feeds;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (infos != null) {
      OrtamSicakikStr.value = '${infos?[0]?.field1 ?? ""}';
      OrtamNemStr.value = '${infos?[0]?.field2 ?? ""}';
      ToprakNemStr.value = '${infos?[0]?.field3 ?? ""}';
      Saat.value = '${infos?[0]?.acc ?? ""}';
    }
    if (OrtamNemStr.value != "") {
      OrtamNemDouble = double.parse(OrtamNemStr.value);
    }
    if (OrtamSicakikStr.value != "") {
      OrtamSicaklikDouble = double.parse(OrtamSicakikStr.value);
    }
    if (ToprakNemStr.value != "") {
      ToprakNemDouble = double.parse(ToprakNemStr.value);
    }

    ToprakNemDouble ??= 0.0;
    OrtamNemDouble ??= 0.0;
    OrtamSicaklikDouble ??= 0.0;

    return ViewModelBuilder<BuyIotScreenModel>.reactive(
      viewModelBuilder: () => BuyIotScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Constants.green,
        body: Column(
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tarlamın Durumu",
                          style: Constants.googleHeadline1,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          ' En son güncelleme tarihi: $Saat',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: size.width,
                decoration: const BoxDecoration(
                  color: Constants.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(150),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Ortam Sıcaklık",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      TemplateWidget(template: OrtamSicaklikDouble),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Ortam Nemi",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      SoilMoistureWidget(soilMoisture: OrtamNemDouble),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Toprak Nemi",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      SoilMoistureWidget(soilMoisture: ToprakNemDouble),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Sulama Ayarı",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      Slider(
                        value: currentSliderValue,
                        max: 100,
                        divisions: 100,
                        label: currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            currentSliderValue = value;
                          });
                        },
                      ),
                      Text(
                        '%$currentSliderValue',
                        style: const TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      SizedBox(
                        height: 100,
                        child: Image.asset(
                          'assets/logo.png',
                        ),
                      ),
                      Text(
                        'TARIM 4.0',
                        style: GoogleFonts.play(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

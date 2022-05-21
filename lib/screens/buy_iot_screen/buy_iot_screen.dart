import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/graphics/irrigation_setting_widget.dart';
import 'package:tarim_4_0/config/widget/graphics/soil_moisture_widget.dart';
import 'package:tarim_4_0/config/widget/graphics/template_widget.dart';
import 'package:tarim_4_0/config/widget/graphics/water_tank_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen_model.dart';

class BuyIotScreen extends StatelessWidget {
  BuyIotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                  child: Text(
                    "Tarlamın Durumu",
                    style: Constants.googleHeadline1,
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
                        "Sıcaklık",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      TemplateWidget(template: model.template),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Toprak Nemi",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      SoilMoistureWidget(soilMoisture: model.moilSoiture),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Su Deposu",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      WaterTankWidget(
                          size: size,
                          minimumLevel: 0,
                          maximumLevel: 500,
                          level: model.level),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Sulama Ayarı",
                        style:
                            Constants.headline1.apply(color: Constants.black),
                      ),
                      IrrigationSettingWidget(
                        annotationValue:
                            model.irrigationSettingAmount.toString(),
                        irrigationSettingAmount: model.irrigationSettingAmount,
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

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen_model.dart';

class IotScreen extends StatelessWidget {
  const IotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<IotScreenModel>.reactive(
      viewModelBuilder: () => IotScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Constants.green,
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: size.height * 0.25,
                ),
                Container(
                  height: size.height * 0.66,
                  decoration: const BoxDecoration(
                    color: Constants.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Neden Tarım 4.0 Akıllı Sistemi Kullanmalıyız?",
                          style:
                              Constants.headline2.apply(color: Constants.black),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: model.text
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(
                                        left: 20, top: 20),
                                    child: Text(
                                      "✅ $e",
                                      style: Constants.subtitle1
                                          .apply(color: Constants.black),
                                    ),
                                  ))
                              .toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              width: size.width,
              top: 100,
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    spreadRadius: 4,
                  )],
                ),
                child: CircleAvatar(
                  backgroundColor: Constants.white,
                  radius: 70,
                  child: Image.asset("assets/logo.png",
                  height: 80),
                ),
              ),
            ),
            Positioned(
              width: size.width,
              bottom: size.height * 0.03,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ButtonWidget(
                  size: size,
                  height: 0.06,
                  onPressed: () {
                    Navigator.pushNamed(context, '/new_crop');
                  },
                  title: 'Satın Al',
                  color: Constants.lightGreen,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

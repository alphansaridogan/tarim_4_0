import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen_model.dart';

class BuyIotScreen extends StatelessWidget {
  const BuyIotScreen({Key? key}) : super(key: key);

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
            Container(
              height: size.height * 0.25,
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

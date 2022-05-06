import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/buy_iot_screen/buy_iot_screen_model.dart';

class BuyIotScreen extends StatelessWidget {
  const BuyIotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BuyIotScreenModel>.reactive(
      viewModelBuilder: () => BuyIotScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Tarım 4.0 Satın Al'),
        ),
      ),
    );
  }
}

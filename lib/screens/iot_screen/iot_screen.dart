import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/iot_screen/iot_screen_model.dart';

class IotScreen extends StatelessWidget {
  const IotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IotScreenModel>.reactive(
      viewModelBuilder: () => IotScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Tarım 4.0'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/buy_iot');
              },

              ///örnek geçiş olsun diye koydum
              child: const Text('Satın Al')),
        ),
      ),
    );
  }
}

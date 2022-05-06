import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen_model.dart';

class NewCropScreen extends StatelessWidget {
  const NewCropScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<NewCropScreenModel>.reactive(
      viewModelBuilder: () => NewCropScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: const Text('Yeni Ekin Bilgileri'),
        ),
      ),
    );
  }
}

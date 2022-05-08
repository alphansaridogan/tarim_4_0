import 'dart:io';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/app_bar_widget.dart';
import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/config/widget/drop_down_widget.dart';
import 'package:tarim_4_0/config/widget/sub_main_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/new_crop_screen/new_crop_screen_model.dart';

class NewCropScreen extends StatelessWidget {
  const NewCropScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<NewCropScreenModel>.reactive(
      viewModelBuilder: () => NewCropScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Constants.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: AppBarWidget(
                    size: size,
                    title: "Yeni Ekin Bilgileri",
                    subTitle: "Tarım arazisi hakkında bilgileri ekle ve başla",
                  ),
                ),
                Expanded(
                    flex: 5,
                    child: SubMainWidget(
                      size: size,
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: SizedBox(
                          height: constraints.maxHeight * 0.72,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(
                                height: size.height * 0.03,
                              ),
                              DropDownWidget(
                                value: model.city,
                                size: size,
                                list: model.cities,
                                title: 'Şehir Seçiniz',
                                onChanged: (value) {
                                  model.city = value;
                                  //model taşımamız gerekiyor.
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DropDownWidget(
                                value: model.conty,
                                list: model.counties,
                                title: 'İlçe Seçiniz',
                                onChanged: (value) {
                                  model.conty = value;
                                },
                                size: size,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              DropDownWidget(
                                value: model.product,
                                list: model.products,
                                title: 'Ürün Seçiniz',
                                onChanged: (value) {
                                  model.product = value;
                                },
                                size: size,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Slider(
                                value: model.cultivationArea,
                                max: 30,
                                min: 1,
                                divisions: 10,
                                activeColor: Constants.green,
                                inactiveColor: Constants.lightGreen,
                                onChanged: (value) {
                                  model.cultivationArea = value;
                                  //modele taşınması gerekiyor.
                                },
                                thumbColor: Constants.white,
                              ),
                              Center(
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Arazi Büyüklüğü: ",
                                        style: Constants.headline3
                                            .apply(color: Constants.black),
                                      ),
                                      TextSpan(
                                        text:
                                            '${model.cultivationArea.toInt().toString()} ',
                                        style: Constants.headline1
                                            .apply(color: Constants.black),
                                      ),
                                      TextSpan(
                                        text: "Dönüm",
                                        style: Constants.headline3
                                            .apply(color: Constants.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ButtonWidget(
                                size: size,
                                height: 0.05,
                                borderColor: Constants.green,
                                onPressed: () {},
                                title: 'Yeni Ekin Ekle',
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ButtonWidget(
                                size: size,
                                height: 0.05,
                                color: Constants.lightGreen,
                                onPressed: () {},
                                title: 'Devam Et',
                                borderColor: Colors.black45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          );
        }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/drop_down_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/suggestions_screen/suggestions_screen_model.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<SuggestionsScreenModel>.reactive(
      viewModelBuilder: () => SuggestionsScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Constants.green,
        body: Column(
          children: [
            Container(
              height: size.height * 0.7,
              decoration: const BoxDecoration(
                color: Constants.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 75,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: size.width * 0.45,
                          child: model.product != null
                              ? Image.network(
                                  model.productDetail[model.productAssignment(
                                      model.product)]['urlImage'],
                                )
                              : const SizedBox(),
                        ),
                        DropDownWidget(
                            borderColor: Constants.white,
                            value: model.product,
                            width: 0.5,
                            textStyle: Constants.headline1
                                .apply(color: Constants.black),
                            list: model.products,
                            title: 'Ürün Seçiniz',
                            onChanged: model.setProduct,
                            size: size)
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    model.product != null
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Center(
                              child: (Text(
                                '- ${model.productDetail[model.productAssignment(model.product)]['description1']}',
                                style: Constants.subtitle1,
                              )),
                            ),
                          )
                        : const SizedBox(),
                    const SizedBox(
                      height: 10,
                    ),
                    model.product != null
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: (Text(
                              '- ${model.productDetail[model.productAssignment(model.product)]['description2']}',
                              style: Constants.subtitle1,
                            )),
                          )
                        : const SizedBox(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            model.product != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/icon.png',
                            scale: 0.9,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            model.productDetail[
                                    model.productAssignment(model.product)]
                                ['microorganism'],
                            style: Constants.headline2,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.thermostat_outlined,
                            size: 45,
                            color: Constants.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Uygun Sıcaklık',
                            style: Constants.headline2,
                          ),
                          Text(
                            model.productDetail[
                                model.productAssignment(model.product)]['heat'],
                            style: Constants.headline2
                                .apply(color: Constants.black),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Icon(
                            Icons.water_drop_outlined,
                            size: 45,
                            color: Constants.white,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const Text(
                            'Uygun Nem',
                            style: Constants.headline2,
                          ),
                          Text(
                            model.productDetail[model
                                .productAssignment(model.product)]['moisture'],
                            style: Constants.headline2
                                .apply(color: Constants.black),
                          )
                        ],
                      ),
                    ],
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

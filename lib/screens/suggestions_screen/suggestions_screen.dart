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
              width: size.width * 0.96,
              decoration: const BoxDecoration(
                color: Constants.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(150),
                ),
              ),
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
                        child: Image.network(
                          'https://www.cagri.com/Uploads/UrunResimleri/uzum-siyah-kg-cf9d.jpg',
                        ),
                      ),
                      DropDownWidget(
                          borderColor: Constants.white,
                          value: model.product,
                          width: 0.5,
                          textStyle:
                              Constants.headline1.apply(color: Constants.black),
                          list: model.products,
                          title: 'Ürün Seçiniz',
                          onChanged: (value) {
                            model.product = value;
                          },
                          size: size)
                    ],
                  ),
                  Text(model.productDetail[0]
                      [model.product]), //listedekine göre alanacak değer
                ],
              ),
            ),
            Row(
              children: [
                Column(
                  children: [],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

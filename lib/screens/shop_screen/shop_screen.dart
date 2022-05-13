import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:tarim_4_0/config/widget/icon_button_widget.dart';
import 'package:tarim_4_0/config/widget/product_widget.dart';
import 'package:tarim_4_0/config/widget/text_field_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/shop_screen/shop_screen_model.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<ShopScreenModel>.reactive(
      viewModelBuilder: () => ShopScreenModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Constants.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: size.height * 0.05,
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
              ),
              Text(
                'Mağaza',
                style: Constants.headline1.apply(color: Constants.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.manage_search_rounded,
                    size: 45,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  TextFieldWidget(
                    title: 'Ürün Adı',
                    size: size,
                    width: 0.6,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  IconButtonWidget(
                    size: size,
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: model.product
                      .map((e) => ProductWidget(
                            bacgroundColor: Colors.grey.shade300,
                            size: size,
                            url: model.product[e['ID']]['urlImage'],
                            product: model.product[e['ID']]['adi'],
                            productBrand: model.product[e['ID']]['brand'],
                            productMeasurement:
                                '${model.product[e['ID']]['measurement'].toString()} Litre',
                            productPrice:
                                '${model.product[e['ID']]['price'].toString()} ₺',
                            onPressed: () {},
                          ))
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'En Çok Satanlar',
                style: Constants.headline1.apply(color: Constants.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                height: size.height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                  ),
                  border: Border.all(color: Constants.black),
                ),
                child: Row(
                  children: [
                    Container(
                      height: size.height * 0.07,
                      width: size.width * 0.3,
                      decoration: const BoxDecoration(
                        color: Constants.lightGreen,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          '200 ₺',
                          style:
                              Constants.headline2.apply(color: Constants.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text('TURKSAN S_80'), Text('Sıvı Kükürt')],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

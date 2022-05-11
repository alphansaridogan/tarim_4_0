import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
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
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Text(
                'Mağaza',
                style: Constants.headline1.apply(color: Constants.black),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                      width: size.height * 0.06,
                      height: size.height * 0.06,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Constants.lightGreen),
                      child: const Icon(Icons.search)),
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
                  const Icon(
                    Icons.manage_search_rounded,
                    size: 35,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'package:tarim_4_0/config/widget/button_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';
import 'package:tarim_4_0/screens/product_detail_screen/product_detail_screen_model.dart';

class ProductDetail extends StatelessWidget {
  int productId;
  ProductDetail({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ViewModelBuilder<ProductDetailModel>.reactive(
      viewModelBuilder: () => ProductDetailModel(),
      onModelReady: (model) => model.init(),
      builder: (context, model, child) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height,
                child: Scaffold(
                  backgroundColor: Constants.green,
                  body: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 2,
                            child: SizedBox(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      size: 35,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.shopping_cart),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 6,
                            child: Column(
                              children: [
                                Container(
                                  height: size.height * 0.75,
                                  decoration: const BoxDecoration(
                                    color: Constants.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(150),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: size.height * 0.12,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const SizedBox(
                                            height: 20,
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 75,
                                                width: size.width * 0.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade300,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(60),
                                                    topRight:
                                                        Radius.circular(60),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Miktar",
                                                        style: Constants
                                                            .headline2
                                                            .apply(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    176,
                                                                    15,
                                                                    143,
                                                                    4)),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                          "${model.product[productId]['measurement'].toString()} Litre")
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 75,
                                                width: size.width * 0.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade300,
                                                  borderRadius:
                                                      const BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(60),
                                                    topRight:
                                                        Radius.circular(60),
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Fiyat",
                                                        style: Constants
                                                            .headline2
                                                            .apply(
                                                                color: const Color
                                                                        .fromARGB(
                                                                    176,
                                                                    15,
                                                                    143,
                                                                    4)),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                          "${model.product[productId]['price'].toString()} ₺"),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 25,
                                          ),
                                          Text(
                                            model.product[productId]
                                                ['description'],
                                            style: Constants.subtitle2,
                                          ),
                                          const SizedBox(
                                            height: 47,
                                          ),
                                          ButtonWidget(
                                              size: size,
                                              borderColor: Constants.green,
                                              height: 0.06,
                                              onPressed: () {},
                                              title: "Sepete Ekle"),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          ButtonWidget(
                                              size: size,
                                              borderColor: Constants.black,
                                              color: Constants.lightGreen,
                                              height: 0.06,
                                              onPressed: () {},
                                              title: "Satın Al")
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        width: size.width,
                        left: -110,
                        top: 135,
                        child: SizedBox(
                            width: size.width * 0.40,
                            height: size.width * 0.40,
                            child: Image.network(
                                model.product[productId]["urlImage"])),
                      ),
                      Positioned(
                        width: size.width,
                        left: 180,
                        top: 240,
                        child: SizedBox(
                          width: size.width * 0.40,
                          height: size.width * 0.40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                model.product[productId]['adi'],
                                style: Constants.headline1
                                    .apply(color: Constants.black),
                              ),
                              Text(model.product[productId]['brand']),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

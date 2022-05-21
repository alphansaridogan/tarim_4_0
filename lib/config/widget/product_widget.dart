import 'package:flutter/material.dart';
import 'package:tarim_4_0/config/widget/icon_button_widget.dart';
import 'package:tarim_4_0/constants/constants.dart';

class ProductWidget extends StatelessWidget {
  Color bacgroundColor;
  double radius;
  String url;
  String product;
  String productBrand;
  String productPrice;
  String productMeasurement;
  final Size size;
  void Function()? onPressed;
  void Function()? onTap;

  ProductWidget(
      {Key? key,
      required this.onPressed,
      required this.size,
      this.bacgroundColor = Colors.white,
      required this.product,
      required this.productBrand,
      required this.productMeasurement,
      required this.productPrice,
      required this.onTap,
      this.radius = 15,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          width: size.width * 0.55,
          height: size.height * 0.35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Constants.black),
              color: bacgroundColor),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width * 0.4,
                height: size.height * 0.18,
                child: Image.network(url),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                product,
                style: Constants.headline1.apply(color: Constants.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                productBrand,
                style: Constants.headline3.apply(color: Constants.black),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(productMeasurement),
                      Text(productPrice),
                    ],
                  ),
                  IconButtonWidget(
                    height: 0.05,
                    width: 0.05,
                    radius: 5,
                    size: size,
                    borderColor: Constants.black,
                    icon: const Icon(
                      Icons.add_shopping_cart_outlined,
                      size: 20,
                    ),
                    onPressed: onPressed,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

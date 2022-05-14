import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class TopSellerProductWidget extends StatelessWidget {
  Color borderColor;
  String url;
  String product;
  String productBrand;
  String productPrice;
  String productMeasurement;
  final Size size;
  TopSellerProductWidget({
    Key? key,
    this.borderColor = Colors.black87,
    required this.url,
    required this.product,
    required this.productBrand,
    required this.productPrice,
    required this.productMeasurement,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: size.height * 0.07,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25),
          ),
          border: Border.all(color: borderColor),
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
                  productPrice,
                  style: Constants.headline2.apply(color: Constants.black),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [Text(productBrand), Text(product)],
            ),
            SizedBox(
              width: size.width * 0.13,
            ),
            Text(
              productMeasurement,
              style: const TextStyle(fontSize: 8),
            ),
            const SizedBox(
              width: 15,
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Image.network(url),
            )
          ],
        ),
      ),
    );
  }
}

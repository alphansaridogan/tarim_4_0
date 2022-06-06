import 'package:flutter/material.dart';
import 'package:tarim_4_0/constants/constants.dart';

class NewsWidget extends StatelessWidget {
  final Size size;
  String url;
  String text;

  NewsWidget({
    Key? key,
    required this.url,
    required this.text,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.6,
      height: size.height * 0.33,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              width: size.width * 0.5,
              height: size.height * 0.20,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(25)),
              child: Image.network(
                url,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: Constants.subtitle3.apply(color: Constants.black),
            ),
          ],
        ),
      ),
    );
  }
}

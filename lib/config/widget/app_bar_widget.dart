import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class AppBarWidget extends StatelessWidget {
  Color? color;
  String title;
  String? subTitle;
  Size size;
  AppBarWidget({
    Key? key,
    this.color,
    required this.title,
    this.subTitle,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      color: color ?? Constants.green,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            Text(
              title,
              style: Constants.googleHeadline1,
            ),
            const SizedBox(
              height: 30,
            ),
            subTitle != null
                ? Text(
                    subTitle!,
                    style: Constants.headline2,
                  )
                : const Text(""),
          ],
        ),
      ),
    );
  }
}

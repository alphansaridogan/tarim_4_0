import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class TextFieldWidget extends StatelessWidget {
  double? height;
  TextEditingController? controller;
  Color? cursorColor;
  Color? color;
  double? radius;
  String title;

  TextFieldWidget({
    Key? key,
    this.height = 0.06,
    this.controller,
    this.cursorColor = Constants.black,
    this.color = Constants.black,
    this.radius = 15,
    required this.title,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * height!,
      child: TextField(
        controller: controller,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: color!,
            ),
            borderRadius: BorderRadius.circular(radius!),
          ),
          label:  Text(title),
          labelStyle: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}

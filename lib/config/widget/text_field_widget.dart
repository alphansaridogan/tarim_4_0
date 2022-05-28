import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class TextFieldWidget extends StatelessWidget {
  final Size size;
  double height;
  double width;
  TextEditingController? controller;
  Color cursorColor;
  Color color;
  double radius;
  String title;
  TextStyle textStyle;
  bool obscureText;

  TextFieldWidget({
    Key? key,
    this.height = 0.06,
    this.width = 1,
    this.controller,
    this.cursorColor = Constants.black,
    this.color = Constants.black,
    this.radius = 15,
    required this.title,
    this.textStyle = Constants.subtitle1,
    required this.size,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * height,
      width: size.width * width,
      child: TextField(
        obscureText: obscureText,
        controller: controller,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
            ),
            borderRadius: BorderRadius.circular(radius),
          ),
          label: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}

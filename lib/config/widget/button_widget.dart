import 'package:flutter/material.dart';

import 'package:tarim_4_0/constants/constants.dart';

class ButtonWidget extends StatelessWidget {
  final Size size;
  void Function()? onPressed;
  String title;
  double? height;
  double? width;
  double? radius;
  Color? color;
  TextStyle? textStyle;
  Color? borderColor;

  ButtonWidget({
    Key? key,
    required this.size,
    required this.onPressed,
    required this.title,
    this.width = 0.95,
    this.height = 0.03,
    this.radius = 15,
    this.color = Constants.white,
    this.textStyle = Constants.subtitle2,
    this.borderColor = Colors.black38,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: size.width * width!,
      height: size.height * height!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius!),
        side: BorderSide(color: borderColor!),
      ),
      color: color,
      onPressed: onPressed,
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}

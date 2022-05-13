import 'package:flutter/material.dart';
import 'package:tarim_4_0/constants/constants.dart';

class IconButtonWidget extends StatelessWidget {
  Icon icon;
  void Function()? onPressed;
  double height;
  double width;
  double radius;
  Color borderColor;
  Color color;

  IconButtonWidget({
    Key? key,
    required this.size,
    required this.icon,
    required this.onPressed,
    this.width = 0.06,
    this.height = 0.06,
    this.borderColor = Colors.black54,
    this.color = Constants.lightGreen,
    this.radius = 15,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.height * width,
      height: size.height * height,
      decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(radius),
          color: color),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LogoButtonWidget extends StatelessWidget {
  void Function()? onTap;
  Image image;

  LogoButtonWidget({
    Key? key,
    required this.onTap,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CircleAvatar(
        child: image,
      ),
      onTap: onTap,
    );
  }
}

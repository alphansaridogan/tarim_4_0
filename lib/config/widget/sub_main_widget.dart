import 'package:flutter/material.dart';

import 'package:tarim_4_0/config/widget/custompainters/elips_painter.dart';
import 'package:tarim_4_0/constants/constants.dart';

class SubMainWidget extends StatelessWidget {
  final Size size;
  double? horizantal;
  Widget child;

  SubMainWidget({
    Key? key,
    required this.size,
    this.horizantal = 15,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: size.width * 0.96,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizantal!),
            child: child,
          ),
          decoration: const BoxDecoration(
            color: Constants.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        ),
        Positioned(
          bottom: 100,
          right: 100,
          child: Container(
            child: CustomPaint(
              painter: ElipsPainter(
                left: 15,
                top: 15,
                bottom: 150,
                right: 150,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 150,
          right: 100,
          child: Container(
            child: CustomPaint(
              painter: ElipsPainter(
                left: 15,
                top: 15,
                bottom: 60,
                right: 60,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 75,
          right: 135,
          child: Container(
            child: CustomPaint(
              painter: ElipsPainter(
                left: 15,
                top: 15,
                bottom: 40,
                right: 40,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tarim_4_0/constants/constants.dart';

class ElipsPainter extends CustomPainter {
  double left;
  double top;
  double right;
  double bottom;

  ElipsPainter({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  final paintConfig = Paint()
    ..style = PaintingStyle.fill
    ..color = Constants.green;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawOval(Rect.fromLTRB(left, top, right, bottom), paintConfig);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

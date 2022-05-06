import 'package:flutter/material.dart';
import 'package:tarim_4_0/constants/constants.dart';

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Constants.green;

    Path myPath = Path();

    myPath.moveTo(width, size.height * 0.4);

    myPath.quadraticBezierTo(
        width * 0.9, height * 0.75, width * 0.45, height * 0.75);
    myPath.quadraticBezierTo(width * 0.1, height * 0.76, 0, height);

    myPath.lineTo(0, height);
    myPath.lineTo(width, height);

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

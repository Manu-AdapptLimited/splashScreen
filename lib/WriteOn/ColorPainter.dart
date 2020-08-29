import 'package:flutter/material.dart';


class ColorPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Path path = Path();
    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Color.fromRGBO(215, 75, 84, 0.8)
      ..strokeWidth = 2.2;

    path.moveTo(0, height * 0.28);
    path.lineTo(width - 10, height - 20);
    path.quadraticBezierTo(width, height - 10, width, height);
    path.lineTo(0, height);
    path.lineTo(0, height * 0.29);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

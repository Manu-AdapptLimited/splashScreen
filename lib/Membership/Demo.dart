import 'package:flutter/material.dart';
import 'dart:math' as math;


class ParticlePainter extends CustomPainter {
  // final List<GameObject> objects;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.save();

    final degrees = 120;
    final radians = degrees * math.pi / 180;

    canvas.rotate(radians);

    canvas.drawRect(
        Rect.fromCenter(
          height: 20,
          width: 20,
          center: Offset(
            50,
            40,
          ),
        ),
        Paint()
          ..color = Colors.red
          ..blendMode = BlendMode.darken);

    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  // ParticlePainter(this.objects);
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Yay"),
      ),
      body: CustomPaint(
        child: Container(),
        painter: ParticlePainter(),
      ),
    );
  }
}

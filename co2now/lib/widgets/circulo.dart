import 'package:flutter/material.dart';
import 'dart:math' as math;

// ignore: must_be_immutable
class MyArc extends StatelessWidget {
  final double diameter;
  final double rotationAngle;
  Color? cor;

  MyArc({super.key, this.diameter = 70, this.rotationAngle = 0, this.cor});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(rotationAngle, cor),
      size: Size(diameter, diameter),
    );
  }
}

class MyPainter extends CustomPainter {
  final double rotationAngle;
  Color? cor;

  MyPainter(this.rotationAngle, this.cor);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = cor!;
    canvas.drawArc(
      Rect.fromCenter(
        center: Offset(size.width / 2, size.height / 2),
        height: size.height,
        width: size.width,
      ),
      rotationAngle, // Ângulo inicial modificado para a rotação
      math.pi, // Ângulo final modificado para a rotação
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

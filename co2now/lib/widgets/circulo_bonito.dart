import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/widgets/circulo.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Circulo extends StatelessWidget {
  const Circulo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MyArc(rotationAngle: math.pi/2, cor: Ccolor.verde2),
        MyArc(rotationAngle: math.pi/-2, cor: Ccolor.verde5,),
        Padding(
          padding: const EdgeInsets.all(6.8),
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Ccolor.fundoBranco,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ]
    );
  }
}
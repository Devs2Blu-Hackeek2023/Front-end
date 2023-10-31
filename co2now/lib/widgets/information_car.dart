import 'package:co2now/colors/ccolor.dart';
import 'package:flutter/material.dart';

class InformationCar extends StatelessWidget {
  final String title;
  final dynamic information;
  const InformationCar({super.key, required this.title, required this.information});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
        color: Ccolor.verde5,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(information, style: const TextStyle(
              color: Ccolor.fundoBranco,
              fontSize: 30,
              fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),//Qual é a informação
            Text(title, style: const TextStyle(
              color: Ccolor.fundoBranco
            ),)//O que é esta informação
          ],
        ),
      ),
    );
  }
}
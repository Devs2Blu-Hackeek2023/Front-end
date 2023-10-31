import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/widgets/circulo_bonito.dart';
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  const Information({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.only(top: 50, left: 70, right: 70),
            child: MergeSemantics(
              child: Column(
                children: [
                  const Circulo(),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Text(text, style: const TextStyle(
                      color: Ccolor.cinza,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                    ),
                  ),
                  
                ],
              ),
            ),
    );
  }
}
import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  const Information({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MergeSemantics(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/circulo.png', width: 70,),
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
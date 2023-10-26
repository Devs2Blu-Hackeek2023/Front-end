import 'package:flutter/material.dart';

class Information extends StatelessWidget {
  final String text;
  const Information({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
                child: Column(
                  children: [
                    
                    Text(text)
                  ],
                ),
              );
  }
}
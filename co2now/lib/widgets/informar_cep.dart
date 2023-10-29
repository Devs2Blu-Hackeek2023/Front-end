import 'package:flutter/material.dart';

class InformarCep extends StatefulWidget {
  const InformarCep({super.key});

  @override
  State<InformarCep> createState() => _InformarCepState();
}

class _InformarCepState extends State<InformarCep> {
  @override
  Widget build(BuildContext context) {
    return const TextField(  
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'CEP'
      )
    );
  }
}
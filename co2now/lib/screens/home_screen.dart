import 'package:co2now/widgets/gerar_graph.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/informations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /*height: 415,
          width: 625,
  List<double> regionSummary = [
    4.40, //Norte
    42.42, //Oeste
    10.50, //Centro
    88.99, //Leste
    90.10 //Sul
  ];*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[
          GerarGrafico(regionSummary: [
                          4.40, //Norte
                          42.42, //Oeste
                          10.50, //Centro
                          88.99, //Leste
                          90.10 //Sul
                        ], 
                        largura: 625, 
                        altura: 415
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              Information(text: 'Horário de maior\n        emissão'),
              Information(text: 'Modelo de carro\n que mais emite'),
              Information(text: '   Esse mês teve mais \nemissão que o mês passado'),
            ],
          )
          ]
        ),
      )
    );
  }
}
import 'package:co2now/bar_graph/bar_graph_regions/bar_graph.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<double> regionSummary = [
    4.40,
    42.42,
    10.50,
    88.99,
    90.10
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:[ 
            Container(
            height: 415,
            width: 625,
            child: BarGraph(
              regionSummary: regionSummary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Column(
                  children: [
                    Icon(Icons.car_rental, size: 60,),
                    Text("Teste 1")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.car_rental, size: 60,),
                    Text("Teste 1")
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Icon(Icons.car_rental, size: 60,),
                    Text("Teste 1")
                  ],
                ),
              ),
            ],
          )
          ]
        ),
      )
    );
  }
}
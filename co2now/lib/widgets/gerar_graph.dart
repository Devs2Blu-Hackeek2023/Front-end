import 'package:co2now/colors/ccolor.dart';
import 'package:flutter/material.dart';
import 'package:co2now/bar_graph/bar_graph_regions/bar_graph.dart';

class GerarGrafico extends StatefulWidget {
  final List<double> regionSummary;
  final double largura;
  final double altura;
  const GerarGrafico(
      {super.key,
      required this.regionSummary,
      required this.largura,
      required this.altura});

  @override
  State<GerarGrafico> createState() => _GerarGraficoState();
}

class _GerarGraficoState extends State<GerarGrafico> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
          const Text('Regiões', style: TextStyle(
              color: Ccolor.cinza,
              fontSize: 30,
              fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center,
            ),
          SizedBox(
            height: widget.altura,
            width: widget.largura,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: BarGraph(
                regionSummary: widget.regionSummary,
              ),
            ),
          ),
      ]
      ),
    );
  }
}

import 'package:co2now/bar_graph/bar_graph_regions/bar_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarGraph extends StatelessWidget {
  final List regionSummary;
  const BarGraph({super.key, required this.regionSummary});

  @override
  Widget build(BuildContext context) {
    BarData barData = BarData(regiaoNorte: regionSummary[0], 
                              regionOeste: regionSummary[1], 
                              regiaoCentro: regionSummary[2], 
                              regiaoLeste: regionSummary[3], 
                              regiaoSul: regionSummary[4]
                              );
    barData.initializeBarData();
    return BarChart(
      BarChartData(
        maxY: 100,
        minY: 0,
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: true, getTitlesWidget: getBottomTitles))
        ),
        barGroups: barData.barData.map((data) => BarChartGroupData(
                                        x: data.x,
                                        barRods: [BarChartRodData(toY: data.y,
                                                  color: const Color(0xff5FB139),
                                                  width: 25,
                                                  borderRadius: BorderRadius.circular(5)
                                                )]
                                        )).toList(),
      )
    );
  }
}

Widget getBottomTitles (double value, TitleMeta meta) {
  const style = TextStyle(color: Color(0xff4B8031), fontWeight: FontWeight.bold, fontSize: 10);

  Widget text;
  switch(value.toInt()){
    case 0:
      text = const Text('Norte', style: style);
      break;
    case 1:
      text = const Text('Oeste', style: style);
      break;
    case 2:
      text = const Text('Centro', style: style);
      break;
    case 3:
      text = const Text('Leste', style: style);
      break;
    case 4:
      text = const Text('Sul', style: style);
      break;
    default:
      text = const Text('', style: style);
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
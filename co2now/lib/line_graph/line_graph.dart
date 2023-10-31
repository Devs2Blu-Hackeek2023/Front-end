import 'package:co2now/colors/ccolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineGraph extends StatelessWidget {
  const LineGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        maxX: 31,
        minY: 0,
        maxY: 100000,
        titlesData: Title.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return const FlLine(
              color: Ccolor.verde5,
              strokeWidth: 1
            );
          }        
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(color: Ccolor.cinza, width: 2)
        ),
        lineBarsData: [
          LineChartBarData(
            spots: const  [
              FlSpot(1, 30000),
              FlSpot(2, 54515),
              FlSpot(3, 44515),
              FlSpot(4, 44515),
              FlSpot(5, 34515),
              FlSpot(6, 48484),
              FlSpot(7, 34515),
              FlSpot(8, 14515),
              FlSpot(9, 54515),
              FlSpot(10, 44515),
              FlSpot(11, 44515),
              FlSpot(12, 34515),
              FlSpot(13, 30000),
              FlSpot(14, 34515),
              FlSpot(15, 14515),
              FlSpot(16, 54515),
              FlSpot(17, 44515),
              FlSpot(18, 44515),
              FlSpot(19, 34515),
              FlSpot(20, 50454),
              FlSpot(21, 34515),
              FlSpot(22, 14515),
              FlSpot(23, 54515),
              FlSpot(24, 48515),
              FlSpot(25, 44515),
              FlSpot(26, 89413),
              FlSpot(27, 35611),
              FlSpot(28, 30000),
              FlSpot(29, 78512),
              FlSpot(30, 30000),
            ],
            isCurved: false,
            color: Ccolor.verde3,
            barWidth: 3,
            belowBarData: BarAreaData(
              show: false,
              color: Ccolor.verde1
            )
          )
        ]
      )
    );
  }
}

class Title{
  static getTitleData() => FlTitlesData(
    show: false, 
    bottomTitles: AxisTitles(
      sideTitles: SideTitles(
        showTitles: true,
        reservedSize: 35,
        getTitlesWidget:(value, meta) {
          switch(value.toInt()){
            case 2: 
              return const Text('2020');
            case 5: 
              return const Text('2022');
            case 8: 
              return const Text('2022');
            default:
              return const Text('');
          }
        },
      ),
    ),
    leftTitles: AxisTitles(sideTitles: SideTitles(
      showTitles: true,
      reservedSize: 35,
      getTitlesWidget: (value, meta){
        switch(value.toInt()){
          case 10:
            return const Text('10');
          case 20:
            return const Text('20');
          case 30:
            return const Text('30');
          case 40:
            return const Text('40');
          case 50:
            return const Text('50');
          case 60:
            return const Text('60');
          case 70:
            return const Text('70');
          case 80:
            return const Text('80');
          case 90:
            return const Text('90');
          case 100:
            return const Text('100');
          default:
            return const Text('');
        }
      },
    )
    )
  );
}
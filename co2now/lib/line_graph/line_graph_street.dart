import 'package:co2now/colors/ccolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineGraphStreet extends StatelessWidget {
  const LineGraphStreet({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 1,
        maxX: 31,
        minY: 0,
        maxY: 10000,
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
            spots: const [
              FlSpot(1, 1000),
              FlSpot(2, 5081),
              FlSpot(3, 4788),
              FlSpot(4, 4684),
              FlSpot(5, 3248),
              FlSpot(6, 1078),
              FlSpot(7, 3148),
              FlSpot(8, 1458),
              FlSpot(9, 5840),
              FlSpot(10, 4840),
              FlSpot(11, 4877),
              FlSpot(12, 3976),
              FlSpot(13, 1087),
              FlSpot(14, 3487),
              FlSpot(15, 1784),
              FlSpot(16, 5784),
              FlSpot(17, 4794),
              FlSpot(18, 4785),
              FlSpot(19, 3785),
              FlSpot(20, 1054),
              FlSpot(21, 3870),
              FlSpot(22, 1870),
              FlSpot(23, 5987),
              FlSpot(24, 4787),
              FlSpot(25, 4754),
              FlSpot(26, 3845),
              FlSpot(27, 1045),
              FlSpot(28, 3845),
              FlSpot(29, 1548),
              FlSpot(30, 3874),
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
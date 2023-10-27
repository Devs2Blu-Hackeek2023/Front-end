import 'package:co2now/colors/ccolor.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineGraph extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxX: 11,
        minY: 0,
        maxY: 10,
        titlesData: Title.getTitleData(),
        gridData: FlGridData(
          show: true,
          getDrawingHorizontalLine: (value) {
            return FlLine(
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
            spots: [
              FlSpot(0, 3),
              FlSpot(2, 1),
              FlSpot(4, 5),
              FlSpot(6, 4),
              FlSpot(8, 4),
              FlSpot(9, 3),
              FlSpot(11, 10)
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
              return Text('2020');
            case 5: 
              return Text('2022');
            case 8: 
              return Text('2022');
            default:
              return Text('');
          }
        },
      ),
    ),
    leftTitles: AxisTitles(sideTitles: SideTitles(
      showTitles: false,
      reservedSize: 35,
      getTitlesWidget: (value, meta){
        switch(value.toInt()){
          case 10:
            return Text('10');
          case 20:
            return Text('20');
          case 30:
            return Text('30');
          case 40:
            return Text('40');
          case 50:
            return Text('50');
          case 60:
            return Text('60');
          case 70:
            return Text('70');
          case 80:
            return Text('80');
          case 90:
            return Text('90');
          case 100:
            return Text('100');
          default:
            return Text('');
        }
      },
    )
    )
  );
}
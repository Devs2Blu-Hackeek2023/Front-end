import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/repositories/veiculo_repository.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineGraph extends StatelessWidget {
  final int id;
  const LineGraph({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: VeiculoRepository.getEmissoesMes(id),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return LineChart(
          LineChartData(
            minX: 1,
            maxX: 31,
            minY: 0,
            maxY: 10000000,
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
                spots:  [
                  FlSpot(1, snapshot.data![0]),
                  FlSpot(2, snapshot.data![1]),
                  FlSpot(3, snapshot.data![2]),
                  FlSpot(4, snapshot.data![3]),
                  FlSpot(5, snapshot.data![4]),
                  FlSpot(6, snapshot.data![5]),
                  FlSpot(7, snapshot.data![6]),
                  FlSpot(8, snapshot.data![7]),
                  FlSpot(9, snapshot.data![8]),
                  FlSpot(10, snapshot.data![9]),
                  FlSpot(11, snapshot.data![10]),
                  FlSpot(12, snapshot.data![11]),
                  FlSpot(13, snapshot.data![12]),
                  FlSpot(14, snapshot.data![13]),
                  FlSpot(15, snapshot.data![14]),
                  FlSpot(16, snapshot.data![15]),
                  FlSpot(17, snapshot.data![16]),
                  FlSpot(18, snapshot.data![17]),
                  FlSpot(19, snapshot.data![18]),
                  FlSpot(20, snapshot.data![19]),
                  FlSpot(21, snapshot.data![20]),
                  FlSpot(22, snapshot.data![21]),
                  FlSpot(23, snapshot.data![22]),
                  FlSpot(24, snapshot.data![23]),
                  FlSpot(25, snapshot.data![24]),
                  FlSpot(26, snapshot.data![25]),
                  FlSpot(27, snapshot.data![26]),
                  FlSpot(28, snapshot.data![27]),
                  FlSpot(29, snapshot.data![28]),
                  FlSpot(30, snapshot.data![29]),
                  FlSpot(31, snapshot.data![30])
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
        return const Center(
              child: CircularProgressIndicator(),
            );
      }
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
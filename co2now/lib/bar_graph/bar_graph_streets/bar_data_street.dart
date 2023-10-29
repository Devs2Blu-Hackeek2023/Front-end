import 'package:co2now/bar_graph/individual_bar.dart';

class BarDataStreet{
  final double rua1;
  final double rua2;
  final double rua3;
  final double rua4;
  final double rua5;

  BarDataStreet({required this.rua1,
                 required this.rua2,
                 required this.rua3,
                 required this.rua4,
                 required this.rua5,});

  List<IndividualBar> barDataStreet =[];

  void initializeBarDataStreet(){
    barDataStreet = [
      IndividualBar(x: 0, y: rua1),
      IndividualBar(x: 1, y: rua2),
      IndividualBar(x: 2, y: rua3),
      IndividualBar(x: 3, y: rua4),
      IndividualBar(x: 4, y: rua5)
    ];
  }
}
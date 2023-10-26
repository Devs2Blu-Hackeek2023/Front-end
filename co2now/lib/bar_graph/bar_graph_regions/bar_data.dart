import 'package:co2now/bar_graph/individual_bar.dart';

class BarData{
  final double regiaoNorte;
  final double regiaoSul;
  final double regiaoCentro;
  final double regiaoLeste;
  final double regionOeste;

  BarData({required this.regiaoNorte, 
           required this.regiaoCentro, 
           required this.regiaoLeste, 
           required this.regiaoSul, 
           required this.regionOeste});

  List<IndividualBar> barData = [];

  void initializeBarData() {
    barData = [
      IndividualBar(x: 0, y: regiaoNorte),
      IndividualBar(x: 1, y: regionOeste),
      IndividualBar(x: 2, y: regiaoCentro),
      IndividualBar(x: 3, y: regiaoLeste),
      IndividualBar(x: 4, y: regiaoSul),
    ];
  }
}
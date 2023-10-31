import 'package:co2now/models/veiculo_model.dart';
import 'package:co2now/screens/car_select_screen.dart';
import 'package:flutter/material.dart';

class VeiculosTile extends StatelessWidget {
  final VeiculoModel veiculoModel;
  const VeiculosTile({super.key, required this.veiculoModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          //Aqui eu mudo o estilo da fonte
          Text(veiculoModel.placa),
          Text(veiculoModel.marca)
        ],
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CarSelectScreen(id: veiculoModel.id)));
      },
    );
  }
}
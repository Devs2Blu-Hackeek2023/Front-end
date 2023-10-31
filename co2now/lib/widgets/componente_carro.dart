import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/models/veiculo_model.dart';
import 'package:co2now/screens/car_select_screen.dart';
import 'package:flutter/material.dart';

class VeiculosTile extends StatelessWidget {
  final VeiculoModel veiculoModel;
  const VeiculosTile({super.key, required this.veiculoModel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          color: Ccolor.verde5,
          borderRadius: BorderRadius.circular(10)
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Aqui eu mudo o estilo da fonte
              Text(veiculoModel.placa, style: const TextStyle(
                  color: Ccolor.fundoBranco,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,
              ),
              Text(veiculoModel.marca, style: const TextStyle(
                  color: Ccolor.fundoBranco,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CarSelectScreen(id: veiculoModel.id)));
        },
      );
  }
}
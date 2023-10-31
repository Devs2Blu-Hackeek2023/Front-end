import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/models/veiculo_model.dart';
import 'package:co2now/repositories/veiculo_repository.dart';
import 'package:flutter/material.dart';

class MostrarCarro extends StatefulWidget {
  const MostrarCarro({super.key});
  

  @override
  State<MostrarCarro> createState() => _MostrarCarroState();
}

class _MostrarCarroState extends State<MostrarCarro> {
  List<VeiculoModel> veiculos = [];
  getVeiculos() async{
    veiculos = await VeiculoRepository.getVeiculos(); 
  }
  @override
  void initState() {
    getVeiculos();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: veiculos.length,
      itemBuilder: (context, index){
        return InkWell(
          onTap: () {
            
          },
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: Ccolor.verde5,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Container(),
                Column(
                  children: [
                    Text(veiculos[index].placa),
                    Text(veiculos[index].marca)
                  ],
                )
              ]
            ),
          ),
        );
      }
      );
  }
}
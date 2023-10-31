import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/repositories/veiculo_repository.dart';
import 'package:co2now/widgets/componente_carro.dart';
import 'package:flutter/material.dart';

/*
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
*/
class MostrarCarro extends StatefulWidget {
  const MostrarCarro({super.key});

  @override
  State<MostrarCarro> createState() => _MostrarCarroState();
}

class _MostrarCarroState extends State<MostrarCarro> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        color: Ccolor.verde5,
        borderRadius: BorderRadius.circular(10)
      ),
      child: FutureBuilder(
        future: VeiculoRepository.getVeiculos(), 
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString(), style: const TextStyle(color: Colors.red),),);
          }
    
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
    
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => VeiculosTile(veiculoModel: snapshot.data![index])
            );
        }
      ),
    );
  }
}
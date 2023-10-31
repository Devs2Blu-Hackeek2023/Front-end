import 'package:co2now/repositories/veiculo_repository.dart';
import 'package:co2now/widgets/componente_carro.dart';
import 'package:flutter/material.dart';

class MostrarCarro extends StatefulWidget {
  const MostrarCarro({super.key});

  @override
  State<MostrarCarro> createState() => _MostrarCarroState();
}

class _MostrarCarroState extends State<MostrarCarro> {
  @override
  Widget build(BuildContext context) {
    return  FutureBuilder(
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

    );
  }
}
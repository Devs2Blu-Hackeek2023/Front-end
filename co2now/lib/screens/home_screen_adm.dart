 // ignore_for_file: use_build_context_synchronously

 import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/models/veiculo_model.dart';
import 'package:co2now/repositories/proprietario_repository.dart';
import 'package:co2now/repositories/veiculo_repository.dart';
import 'package:co2now/widgets/side_bar_adm.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreenAdm extends StatefulWidget {
   const HomeScreenAdm({super.key});
 
   @override
   State<HomeScreenAdm> createState() => _HomeScreenAdmState();
 }
 
 class _HomeScreenAdmState extends State<HomeScreenAdm> {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final _controller = SidebarXController(selectedIndex: 0, extended: false);
    TextEditingController idController = TextEditingController();
    TextEditingController placaController = TextEditingController();
    TextEditingController modeloController = TextEditingController();
    TextEditingController marcaController = TextEditingController();
    TextEditingController anoController = TextEditingController();
    TextEditingController categoriaController = TextEditingController();
    TextEditingController motorController = TextEditingController();
    TextEditingController combustivelController = TextEditingController();
    TextEditingController kmlController = TextEditingController();
    TextEditingController proprietarioIdController = TextEditingController();
    TextEditingController modificacoesController = TextEditingController();    

   @override
   Widget build(BuildContext context) {
     return Scaffold(
      key: scaffoldKey,
      body: Row(
        children: [
          SideBarAdm(controller: _controller),
          SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Form(
                  key: formKey,
                  child: Padding (
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: idController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ID',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O ID do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: placaController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Placa',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'A placa do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: modeloController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Modelo',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O modelo do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: marcaController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Marca',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'A marca do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: anoController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Ano',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O ano do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: categoriaController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Categoria',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'A Categoria do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: motorController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Motor',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O motor do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: combustivelController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Combustível',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O combustível do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: kmlController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Km/L',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O Km/L do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: proprietarioIdController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'ID do proprietário novo ',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'O ID do proprietário novo do carro é obrigaória';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          controller: modificacoesController,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Modificações',
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'As modificações do carro são obrigaórias';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: (MediaQuery.of(context).size.width / 5),
                          height: (MediaQuery.of(context).size.height / 20),
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                            ),
                            child: const Text(
                              "Atualizar",
                              style: TextStyle(color: Ccolor.fundoBranco),
                            ),
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                VeiculoModel veiculo = VeiculoModel(
                                  id: int.parse(idController.text), 
                                  placa: placaController.text, 
                                  modelo: modeloController.text, 
                                  ano: int.parse(anoController.text), 
                                  marca: marcaController.text, 
                                  categoria: categoriaController.text,
                                  motor: motorController.text, 
                                  combustivel: combustivelController.text, 
                                  kml: int.parse(kmlController.text), 
                                  proprietarioId: int.parse(proprietarioIdController.text), 
                                  proprietario: await ProprietarioRepository.getProprietarioById(int.parse(proprietarioIdController.text)), 
                                  modificacoes: modificacoesController.text
                                );
                                try {
                                  await VeiculoRepository.updateVeiculo(veiculo.id, veiculo);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Veículo atualizado com sucesso'),
                                      duration: Duration(seconds: 3)
                                    )
                                  );
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Veículo não atualizado'),
                                      duration: Duration(seconds: 3)
                                    )
                                  );
                                }
                              }
                            },
                          ),
                        ),
                        const SizedBox(height: 20,)
                      ],
                    ),
                  )
                ),
              ),
            ),
          ),
        ],
      ), 
     );
   }
 }
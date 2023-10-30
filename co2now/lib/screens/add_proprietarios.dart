// ignore_for_file: use_build_context_synchronously

import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/models/proprietario_model.dart';
import 'package:co2now/repositories/proprietario_repository.dart';
import 'package:co2now/repositories/usuario_repository.dart';
import 'package:co2now/widgets/side_bar_adm.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class AddProprietario extends StatefulWidget {
  const AddProprietario({super.key});

  @override
  State<AddProprietario> createState() => _AddProprietarioState();
}

class _AddProprietarioState extends State<AddProprietario> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  TextEditingController idController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController cnhController = TextEditingController();
  TextEditingController usuarioIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: formKey,
      body: Row(
        children: [
          SideBarAdm(controller: _controller),
          SizedBox(
            width: (MediaQuery.of(context).size.width / 1.2),
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextFormField(
                      controller: idController,
                      decoration: const InputDecoration(
                        labelText: 'ID',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O ID é obrigatório';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: nomeController,
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O nome é obrigatório';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: cpfController,
                      decoration: const InputDecoration(
                        labelText: 'CPF',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O CPF é obrigatório';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: cnhController,
                      decoration: const InputDecoration(
                        labelText: 'CNH',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'A CNH é obrigatória';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: usuarioIdController,
                      decoration: const InputDecoration(
                        labelText: 'Usuário ID',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O usuário ID é obrigatório';
                        }
                        return null;
                      }
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
                              "Criar",
                              style: TextStyle(color: Ccolor.fundoBranco),
                            ),
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                ProprietarioModel proprietario = ProprietarioModel(
                                  id: int.parse(idController.text), 
                                  nomeCompleto: nomeController.text, 
                                  cpf: cpfController.text,  
                                  cnh: cnhController.text, 
                                  usuarioId: int.parse(usuarioIdController.text),  
                                  usuario: await UsuarioRepository.getUsuarioById(int.parse(usuarioIdController.text))
                                );
                                try {
                                  await ProprietarioRepository.createProprietario(proprietario);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Proprietário cadastrado com sucesso'),
                                      duration: Duration(seconds: 3)
                                    )
                                  );
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Proprietário não cadastrado'),
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
          )
        ],
      ),
    );
  }
}
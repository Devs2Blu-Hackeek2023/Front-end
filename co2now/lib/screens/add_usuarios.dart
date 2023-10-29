// ignore_for_file: use_build_context_synchronously

import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/models/usuario_model.dart';
import 'package:co2now/repositories/usuario_repository.dart';
import 'package:co2now/widgets/side_bar_adm.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class AddUsuario extends StatefulWidget {
  const AddUsuario({super.key});

  @override
  State<AddUsuario> createState() => _AddUsuarioState();
}

class _AddUsuarioState extends State<AddUsuario> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  TextEditingController idController = TextEditingController();
  TextEditingController nomeController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  TextEditingController roleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
                      controller: userNameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O username é obrigatório';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: senhaController,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'A senha é obrigatória';
                        }
                        return null;
                      }
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: roleController,
                      decoration: const InputDecoration(
                        labelText: 'Cargo',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'O cargo é obrigatório';
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
                                UsuarioModel usuario = UsuarioModel(
                                  id: int.parse(idController.text), 
                                  nome: nomeController.text, 
                                  userName: userNameController.text, 
                                  passwordHash: senhaController.text,  
                                  role: roleController.text
                                );
                                try {
                                  await UsuarioRepository.createUsuario(usuario);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Usuário cadastrado com sucesso'),
                                      duration: Duration(seconds: 3)
                                    )
                                  );
                                } catch (e) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Usuário não cadastrado'),
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

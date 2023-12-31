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
  TextEditingController usernameController = TextEditingController();
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
                padding: const EdgeInsets.only(left: 100),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: nomeController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
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
                      controller: usernameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
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
                        border: OutlineInputBorder(),
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
                        border: OutlineInputBorder(),
                        labelText: 'Cargo',
                      ),
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
                                  id: 0,
                                  nome: nomeController.text, 
                                  username: usernameController.text, 
                                  password: senhaController.text,  
                                  cargo: roleController.text
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

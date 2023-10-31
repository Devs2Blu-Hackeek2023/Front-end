// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/repositories/usuario_repository.dart';
import 'package:co2now/screens/home_screen.dart';
import 'package:co2now/screens/home_screen_adm.dart';
import 'package:co2now/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController cpfController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool loginFailed = false;
  bool authentication = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Ccolor.fundoBranco,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/co2now-logo.png",
            scale: 5,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: (MediaQuery.of(context).size.width / 2),
            child: LoginForm(
              formKey: formKey,
              cpfController: cpfController,
              senhaController: senhaController,
              filho: SizedBox(
                width: (MediaQuery.of(context).size.width / 5),
                height: (MediaQuery.of(context).size.height / 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                  ),
                  child: const Text(
                    "Login",
                    style: TextStyle(color: Ccolor.fundoBranco),
                  ),
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        loginFailed = false;
                        authentication = true;
                      });
                      formKey.currentState!.save();
                      try {
                        await UsuarioRepository.loginUser(
                            cpfController.text, senhaController.text);

                        if (cpfController.text == "11873423942" && senhaController.text == "admin123") {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeScreenAdm()));
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(isLogged: authentication,)));
                        }
                      } catch (e) {
                        setState(() {
                          loginFailed = true;
                        });
                        print("Erro ao fazer login: $e");
                      }
                    } else {
                      setState(() {
                        loginFailed = true;
                      });
                    }
                  },
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

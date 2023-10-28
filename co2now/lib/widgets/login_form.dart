import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Widget? filho;
  final GlobalKey<FormState> formKey;
  final TextEditingController cpfController;
  final TextEditingController senhaController;

  const LoginForm({
    required this.formKey,
    required this.cpfController,
    required this.senhaController,
    this.filho,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: widget.cpfController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'CPF',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "O CPF é obrigatório";
                }
                return null;
              },
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: widget.senhaController,
              obscureText: hidePassword,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: "Senha",
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  icon: Icon(
                      hidePassword ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "A senha é obrigatória";
                }
                return null;
              } 
            ),
            const SizedBox(height: 20),
            (widget.filho ?? Container())
          ],
        ),
      ),
    );
  }
}

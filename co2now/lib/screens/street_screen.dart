// import 'package:co2now/models/rua_model.dart';
// import 'package:co2now/repositories/rua_repository.dart';
// import 'package:co2now/colors/ccolor.dart';
// ignore_for_file: must_be_immutable, avoid_print, unused_element

import 'package:co2now/line_graph/line_graph_street.dart';
import 'package:co2now/widgets/informations.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class StreetScreen extends StatefulWidget {
  String cep;
  StreetScreen({Key? key, required this.cep}) : super(key: key);

  @override
  State<StreetScreen> createState() => _StreetScreenState();
}

class _StreetScreenState extends State<StreetScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  final TextEditingController cepController = TextEditingController();

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 200, top: 30, bottom: 0, right: 90),
                child: Column(
                  children: [
                    SizedBox(
                      width: 1000,
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            suffixIcon: IconButton(
                              icon: const Icon(Icons.search),
                              onPressed: () {
                                // Future<RuaModel> rua = RuaRepository.getRuaByCEP(cep.text);
                                Navigator.pushReplacementNamed(
                                    context, '/street');
                              },
                            ),
                            labelText: 'CEP'),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height - 317,
                        child: const Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                  width: 625,
                                  height: 330,
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: LineGraphStreet(),
                                  ))
                            ])),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Information(text: 'Horário de maior\nemissão'),
                        Information(text: 'Modelo de carro\nque mais emite'),
                      ],
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            ),
          ),
          Row(children: [
            SideBar(controller: _controller),
          ])
        ],
      ),
    );
  }
}

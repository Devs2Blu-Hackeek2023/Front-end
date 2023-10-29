// import 'package:co2now/models/rua_model.dart';
// import 'package:co2now/repositories/rua_repository.dart';
// import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/line_graph/line_graph_street.dart';
import 'package:co2now/widgets/informations.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class StreetScreen extends StatefulWidget {
  const StreetScreen({super.key});

  @override
  State<StreetScreen> createState() => _StreetScreenState();
}

class _StreetScreenState extends State<StreetScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  final TextEditingController cep = TextEditingController();

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 230, top: 20, bottom: 50),
              child: Column(
                children: [
                  SizedBox(
                    width: 1000,
                    child: TextField(  
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        suffixIcon: IconButton(icon: const Icon(Icons.search), onPressed: () {
                          // Future<RuaModel> rua = RuaRepository.getRuaByCEP(cep.text);
                          Navigator.pushReplacementNamed(context, '/');
                        },),
                        labelText: 'CEP'
                      ), 
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 625,
                          height: 415,
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: LineGraphStreet(),
                          )
                        )
                      ]
                    )
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Information(text: 'Horário de maior\n        emissão'),
                      Information(text: 'Modelo de carro\n que mais emite'),
                    ],
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              SideBar(controller: _controller),

            ]
          )
        ],
      ),
    );
  }
}
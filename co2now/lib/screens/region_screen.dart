import 'package:co2now/bar_graph/bar_graph_streets/bar_graph_street.dart';
import 'package:co2now/colors/ccolor.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];

class RegionScreen extends StatefulWidget {
  const RegionScreen({super.key});

  @override
  State<RegionScreen> createState() => _RegionScreenState();
}

class _RegionScreenState extends State<RegionScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  final TextEditingController cep = TextEditingController();
  List <double> streetSummary = [
                              4.40, //Norte
                              42.42, //Oeste
                              10.50, //Centro
                              88.99, //Leste
                              90.10
                            ];
  String dropdownValue = list.first;
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 200, top: 30, bottom: 0, right: 90),
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
                          Navigator.pushReplacementNamed(context, '/street');
                        },),
                        labelText: 'CEP'
                      ), 
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownMenu<String>(
                      initialSelection: list.first,
                      inputDecorationTheme: const InputDecorationTheme(
                        filled: true,
                        fillColor: Ccolor.verde3
                      ),
                      textStyle: const TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),
                      menuStyle: const MenuStyle(
                        backgroundColor: MaterialStatePropertyAll(Ccolor.verde3),
                        
                      ),
                      width: 1000,
                      onSelected: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
                        return DropdownMenuEntry<String>(value: value, label: value);
                      }).toList(),
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    width: 625,
                    height: 415,
                    child: BarGraphStreet(
                      regionStreetSummary: streetSummary,
                    )
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value = !value;

                            streetSummary = [
                              4.40, //Norte
                              42.42, //Oeste
                              10.50, //Centro
                              88.99, //Leste
                              90.10
                            ];
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: 
                          MaterialStatePropertyAll(
                            value ? Ccolor.verde3 : Ccolor.verde5
                          )
                        ),
                        child: const Text('Mês', style: TextStyle(
                              color: Ccolor.fundoBranco,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            value = !value;
                            streetSummary = [
                              90.40, //Norte
                              42.42, //Oeste
                              10.50, //Centro
                              88.99, //Leste
                              90.10
                            ];
                          });
                        },
                        style: ButtonStyle(
                          backgroundColor: 
                            MaterialStatePropertyAll(
                              value ? Ccolor.verde5 : Ccolor.verde3
                            )
                          ),
                          child: const Text('Ano', style: TextStyle(
                              color: Ccolor.fundoBranco,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
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
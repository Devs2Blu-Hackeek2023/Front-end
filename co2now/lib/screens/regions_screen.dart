// import 'package:co2now/models/rua_model.dart';
// import 'package:co2now/repositories/rua_repository.dart';
import 'package:co2now/colors/ccolor.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

class RegionsScreen extends StatefulWidget {
  const RegionsScreen({super.key});

  @override
  State<RegionsScreen> createState() => _RegionsScreenState();
}

class _RegionsScreenState extends State<RegionsScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  final TextEditingController cep = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 280, top: 30, bottom: 0, right: 90),
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
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Ccolor.verde5,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/region');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                        
                      ),
                      child: const Text('Norte', style: TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Ccolor.verde5,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/region');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                        
                      ),
                      child: const Text('Sul', style: TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Ccolor.verde5,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/region');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                        
                      ),
                      child: const Text('Leste', style: TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Ccolor.verde5,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/region');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                        
                      ),
                      child: const Text('Oeste', style: TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 1000,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Ccolor.verde5,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/region');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Ccolor.verde5),
                        
                      ),
                      child: const Text('Centro', style: TextStyle(
                        color: Ccolor.fundoBranco,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
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
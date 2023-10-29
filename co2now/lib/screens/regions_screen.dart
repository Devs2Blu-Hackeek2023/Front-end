import 'package:co2now/models/rua_model.dart';
import 'package:co2now/repositories/rua_repository.dart';
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
  final Future<List<RuaModel>> cep = RuaRepository.getRuas();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 230, top: 20),
              child: Column(
                children: [
                  SizedBox(
                    width: 1000,
                    child: TextField(  
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        suffixIcon: const Icon(Icons.search),
                        labelText: 'CEP'
                      ), 
                    ),
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
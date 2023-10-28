import 'package:co2now/widgets/gerar_graph.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/informations.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        children: [
          SideBar(controller: _controller),
          Container(
            transformAlignment: AlignmentDirectional.centerEnd,
            child: const Column(mainAxisSize: MainAxisSize.min, children: [
              GerarGrafico(regionSummary: [
                4.40, //Norte
                42.42, //Oeste
                10.50, //Centro
                88.99, //Leste
                90.10 //Sul
              ], largura: 625, altura: 415),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Information(text: 'Horário de maior\n        emissão'),
                  Information(text: 'Modelo de carro\n que mais emite'),
                  Information(
                      text:
                          '   Esse mês teve mais \nemissão que o mês passado'),
                ],
              )
            ]),
          ),
        ],
      ),
    ));
  }
}

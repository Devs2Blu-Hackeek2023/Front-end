// ignore_for_file: must_be_immutable

import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/widgets/gerar_graph.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:co2now/widgets/side_bar_pub.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/informations.dart';
import 'package:sidebarx/sidebarx.dart';

class HomeScreen extends StatefulWidget {
  bool isLogged;
  HomeScreen({super.key, required this.isLogged});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
        children: [
          widget.isLogged ? SideBar(controller: _controller) : SideBarPub(controller: _controller),
          Container(
              padding: const EdgeInsets.only(left: 300),
              child: const Column(
                mainAxisSize: MainAxisSize.min, 
                children: [
                Padding(
                  padding: EdgeInsets.only(right: 90),
                  child: Text('Regiões', style: TextStyle(
                    color: Ccolor.cinza,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
                    Information(text: 'Horário de maior\nemissão'),
                    Information(text: 'Modelo de carro\nque mais emite'),
                    Information(text: 'Esse mês teve mais\nemissão que o mês passado'),
                  ],
                )
              ]),
            ),
        ],
      ),
    );
  }
}

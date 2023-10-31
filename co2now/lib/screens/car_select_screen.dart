 import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/icons/cicons.dart';
import 'package:co2now/line_graph/line_graph.dart';
import 'package:co2now/widgets/information_car.dart';
import 'package:co2now/widgets/mostrar_carros.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class CarSelectScreen extends StatefulWidget {
  final int id;
  const CarSelectScreen({super.key, required this.id});

  @override
  State<CarSelectScreen> createState() => _CarSelectScreenState();
}

class _CarSelectScreenState extends State<CarSelectScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
          body: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 300),
                child: ListView(
                        children: [
                          Container(
                            height: 80,
                            color: Ccolor.verde5,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Ccolor.verde3,
                                      borderRadius: BorderRadius.circular(100)
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Icon(Cicons.directions_car, color: Ccolor.fundoBranco, size: 50,),
                                    )
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.all(10.0),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Placa', style: TextStyle(
                                          color: Ccolor.fundoBranco,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text('Marca', style: TextStyle(
                                          color: Ccolor.fundoBranco
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 365, top: 25),
                            child: Row(
                              children: [
                                InformationCar(information: 'Carro',title: 'Categoria'),
                                SizedBox(width: 40,),
                                InformationCar(information: '10Kg',title: 'Emissão'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 191,
                              child: const Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 625,
                                    height: 415,
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: LineGraph(),
                                    )
                                  ),
                                ],
                            ),
                          ),
                        ],
                      ),
              ),
                Row(
                  children: [
                    SideBar(controller: _controller),
                    Container(
                      color: Ccolor.verde3,
                      height: double.infinity,
                      width: 240,
                      child: const MostrarCarro(),

                    )
                  ],
                )
            ],
          ),
        );
  }
}
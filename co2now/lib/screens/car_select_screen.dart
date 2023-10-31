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
  final String placa;
  final String modelo;
  final String marca;
  final String categoria;
  final int kmL;
  const CarSelectScreen({super.key, required this.id, required this.placa, required this.modelo, required this.marca, required this.categoria, required this.kmL});

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
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child:  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(widget.placa, style: const TextStyle(
                                          color: Ccolor.fundoBranco,
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        Text(widget.marca, style: const TextStyle(
                                          color: Ccolor.fundoBranco
                                        ),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 365, top: 25),
                            child: Row(
                              children: [
                                InformationCar(information: widget.categoria,title: 'Categoria'),
                                const SizedBox(width: 40,),
                                InformationCar(information: widget.kmL.toString(),title: 'KmL'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10,),
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 191,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SizedBox(
                                    width: 625,
                                    height: 415,
                                    child: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: LineGraph(id: widget.id),
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
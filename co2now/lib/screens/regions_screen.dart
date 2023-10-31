// import 'package:co2now/models/rua_model.dart';
// import 'package:co2now/repositories/rua_repository.dart';
// ignore_for_file: use_build_context_synchronously, must_be_immutable

import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/screens/region_screen.dart';
import 'package:co2now/screens/street_screen.dart';
import 'package:co2now/widgets/side_bar_pub.dart';
import 'package:flutter/material.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:sidebarx/sidebarx.dart';

class RegionsScreen extends StatefulWidget {
  bool isLogged;
  RegionsScreen({super.key, required this.isLogged});

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
              padding: const EdgeInsets.only(
                  left: 280, top: 30, bottom: 0, right: 90),
              child: Column(
                children: [
                  SizedBox(
                    width: 1000,
                    child: TextField(
                      controller: cep,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () async {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => StreetScreen(
                                      cep: cep.text,
                                      isLogged: widget.isLogged)));
                            },
                          ),
                          labelText: 'CEP'),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegionScreen(
                                  isLogged: widget.isLogged,
                                ))));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Ccolor.verde5),
                      ),
                      child: const Text(
                        'Norte',
                        style: TextStyle(
                            color: Ccolor.fundoBranco,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegionScreen(
                                  isLogged: widget.isLogged,
                                ))));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Ccolor.verde5),
                      ),
                      child: const Text(
                        'Sul',
                        style: TextStyle(
                            color: Ccolor.fundoBranco,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegionScreen(
                                  isLogged: widget.isLogged,
                                ))));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Ccolor.verde5),
                      ),
                      child: const Text(
                        'Leste',
                        style: TextStyle(
                            color: Ccolor.fundoBranco,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegionScreen(
                                  isLogged: widget.isLogged,
                                ))));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Ccolor.verde5),
                      ),
                      child: const Text(
                        'Oeste',
                        style: TextStyle(
                            color: Ccolor.fundoBranco,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => RegionScreen(
                                  isLogged: widget.isLogged,
                                ))));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Ccolor.verde5),
                      ),
                      child: const Text(
                        'Central',
                        style: TextStyle(
                            color: Ccolor.fundoBranco,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(children: [
            widget.isLogged
                ? SideBar(controller: _controller)
                : SideBarPub(controller: _controller),
          ])
        ],
      ),
    );
  }
}

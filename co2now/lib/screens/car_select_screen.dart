import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/line_graph/line_graph.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class CarSelectScreen extends StatefulWidget {
  const CarSelectScreen({super.key});

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
                            height: 50,
                            color: Ccolor.verde5,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height - 100,
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
                                  )
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
                    )
                  ],
                )
            ],
          ),
        );
  }
}
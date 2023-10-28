import 'package:co2now/line_graph/line_graph.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          SideBar(controller: _controller),
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 625,
                height: 415,
                child: LineGraph()
              )
            ],
          ),
        ],
      ),
    );
  }
}
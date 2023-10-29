import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/widgets/side_bar.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class CarScreen extends StatefulWidget {
  const CarScreen({super.key});

  @override
  State<CarScreen> createState() => _CarScreen();
}

class _CarScreen extends State<CarScreen> {
  final _controller = SidebarXController(selectedIndex: 0, extended: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Stack(
            children: [
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
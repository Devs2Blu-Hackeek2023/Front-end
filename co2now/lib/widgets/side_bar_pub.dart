import 'package:co2now/colors/ccolor.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarPub extends StatelessWidget {
  const SideBarPub({Key? key, required SidebarXController controller})
      : _controller = controller,
        super(key: key);
  final SidebarXController _controller;
  @override
  Widget build(BuildContext context) {
    return SidebarX(
      controller: _controller,
      theme: const SidebarXTheme(
          decoration: BoxDecoration(
            color: Ccolor.verde5,
          ),
          iconTheme: IconThemeData(color: Ccolor.fundoBranco),
          textStyle: TextStyle(color: Ccolor.fundoBranco),
          selectedTextStyle: TextStyle(color: Ccolor.fundoBranco),
          hoverTextStyle: TextStyle(color: Ccolor.fundoBranco),
          itemTextPadding: EdgeInsets.only(left: 30),
          selectedItemTextPadding: EdgeInsets.only(left: 30),
          selectedIconTheme: IconThemeData(color: Ccolor.fundoBranco),
          ),
      extendedTheme: const SidebarXTheme(width: 140),
      headerBuilder: (context, extended) {
        return SizedBox(
          height: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/co2now-logo.png"),
          ),
        );
      },
      items: [
        SidebarXItem(
            icon: Icons.home,
            label: "Home",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/home");
            }),
        SidebarXItem(
            icon: Icons.location_on,
            label: "Regions",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/regions");
            }),
      ],
      footerItems: [
        SidebarXItem(
            icon: Icons.login,
            label: "Login",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/login");
            }),
      ],
    );
  }
}

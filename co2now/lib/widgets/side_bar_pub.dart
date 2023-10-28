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
      theme: SidebarXTheme(
          decoration: const BoxDecoration(
            color: Ccolor.verde5,
          ),
          iconTheme: const IconThemeData(color: Ccolor.fundoBranco),
          textStyle: const TextStyle(color: Ccolor.fundoBranco),
          selectedTextStyle: const TextStyle(color: Ccolor.fundoBranco),
          hoverTextStyle: const TextStyle(color: Ccolor.fundoBranco),
          itemTextPadding: const EdgeInsets.only(left: 30),
          selectedItemTextPadding: const EdgeInsets.only(left: 30),
          selectedIconTheme: const IconThemeData(color: Ccolor.fundoBranco),
          selectedItemDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Ccolor.cinza.withOpacity(0.37),
            ),
            gradient:
                const LinearGradient(colors: [Ccolor.verde4, Ccolor.verde3]),
          )),
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

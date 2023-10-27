import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/icons/cicons.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBar extends StatelessWidget {
  const SideBar({Key? key, required SidebarXController controller})
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
            icon: Cicons.directions_car,
            label: "Veichle",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/veiculo");
            }),
        SidebarXItem(
            icon: Icons.settings,
            label: "Settings",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/settings");
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
            icon: Icons.logout,
            label: "Logout",
            onTap: () {
              Navigator.pushReplacementNamed(context, "/homePublic");
            }),
      ],
    );
  }
}

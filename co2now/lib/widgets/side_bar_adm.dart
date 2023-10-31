import 'package:co2now/colors/ccolor.dart';
import 'package:co2now/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sidebarx/sidebarx.dart';

class SideBarAdm extends StatelessWidget {
  const SideBarAdm({Key? key, required SidebarXController controller})
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
          icon: Icons.person,
          label: "Configuration",
          onTap: () {
            Navigator.pushReplacementNamed(context, "/homeADM");
          }
        ),
        SidebarXItem(
          icon: Icons.person_add_alt_1,
          label: "Usuarios",
          onTap: () {
            Navigator.pushReplacementNamed(context, "/addUser");
          }
        ),
        SidebarXItem(
          icon: Icons.person_add_alt_1,
          label: "Proprietários",
          onTap: () {
            Navigator.pushReplacementNamed(context, "/addProp");
          }
        )
      ],
      footerItems: [
        SidebarXItem(
            icon: Icons.logout,
            label: "Logout",
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen(isLogged: false)));
            }),
      ],
    );
  }
}

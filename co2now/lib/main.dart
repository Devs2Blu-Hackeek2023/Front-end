import 'package:co2now/screens/add_proprietarios.dart';
import 'package:co2now/screens/add_usuarios.dart';
import 'package:co2now/screens/car_screen.dart';
import 'package:co2now/screens/car_select_screen.dart';
import 'package:co2now/screens/home_screen.dart';
import 'package:co2now/screens/home_screen_adm.dart';
import 'package:co2now/screens/login_screen.dart';
import 'package:co2now/screens/region_screen.dart';
import 'package:co2now/screens/regions_screen.dart';
import 'package:co2now/screens/street_screen.dart';
import 'package:flutter/material.dart';
import 'colors/ccolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'CO2 Now',
      color: Ccolor.fundoBranco,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(isLogged: false),
        '/login': (context) => const LoginScreen(),
        '/veiculo': (context) => const CarSelectScreen(id:0),
        '/veiculos':(context) => const CarScreen(),
        '/regions':(context) => const RegionsScreen(),
        '/homeADM': (context) => const HomeScreenAdm(),
        '/addUser': (context) => const AddUsuario(),
        '/addProp':(context) => const AddProprietario(),
        '/region':(context) => const RegionScreen(),
        '/street':(context) => StreetScreen(cep: "")
      },
    );
  }
}

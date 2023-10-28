import 'package:co2now/screens/car_select_screen.dart';
import 'package:co2now/screens/home_screen.dart';
import 'package:co2now/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'colors/ccolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Ccolor.fundoBranco,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(isLogged: false),
        '/login': (context) => const LoginScreen(),
        '/car': (context) => const CarSelectScreen() 
      },
    );
  }
}
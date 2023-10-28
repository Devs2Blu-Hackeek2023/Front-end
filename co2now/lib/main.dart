import 'package:co2now/screens/home_screen.dart';
import 'package:co2now/screens/login_screen.dart';
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
      title: 'Flutter Demo',
      color: Ccolor.fundoBranco,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(isLogged: false),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}

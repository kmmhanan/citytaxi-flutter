import 'package:ase_taxi/constants/palette.dart';
import 'package:ase_taxi/splashScreen.dart';
import 'package:ase_taxi/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CityTaxi',
      theme: ThemeData(
        // colorSchemeSeed: Palette.mainColor60,
        primaryColor: Palette.mainColor60,
        fontFamily: 'Merriweather Sans',
      ),
      home: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: WelcomePage());
  }
}

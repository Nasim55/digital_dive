import 'package:digital_dive/screen/splash_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const routeNamed = 'HomePage';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SplashScreen(),
    );
  }
  //get new resource
}

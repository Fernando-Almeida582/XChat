import 'package:flutter/material.dart';
import 'package:xchat/landing_screen/screens/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingScreen()
    );
  }
}
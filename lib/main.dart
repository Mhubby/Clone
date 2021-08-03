import 'package:flutter/material.dart';
import 'package:weather/screens/MainScreen/mainScreen.dart';
import 'package:weather/screens/homeScreen/homeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather',
      home: MainScreen(),
    );
  }
}

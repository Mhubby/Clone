import 'package:flutter/material.dart';
import 'package:weather/screens/homeScreen/homeScreen.dart';
import 'package:weather/screens/settings/settingScreen.dart';
import 'package:weather/screens/temperature/temperature.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int pageIndex = 0;

  List<Widget> pageList = <Widget>[
    HomeScreen(),
    Temperature(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: pageIndex,
          onTap: (value) {
            setState(() {
              pageIndex = value;
            });
          },
          selectedItemColor: Colors.black,
          showSelectedLabels: false,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.bolt_outlined), label: ""),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: "",
            ),
          ]),
    );
  }
}

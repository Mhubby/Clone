import 'package:flutter/material.dart';
import 'package:weather/screens/homeScreen/body.dart';
import 'package:weather/screens/temperature/temperature.dart';
import 'package:weather/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   



    SizeConfig().init(context);
    return Scaffold(

      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.sort_outlined,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.search_rounded),
          ),
        ],
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
      
    );
  }
}

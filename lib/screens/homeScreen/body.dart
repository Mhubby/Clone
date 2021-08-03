import 'package:flutter/material.dart';
import 'package:weather/appliances.dart';
import 'package:weather/screens/homeScreen/categories.dart';

import '../../allan.dart';
import '../../deviceCard.dart';
import '../../estimated.dart';
import '../../appliances.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  final bool isToggled = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          CategoryList(),
          Allan(),
          SizedBox(height: 20),
          Estimated(),
          SizedBox(height: 25),
          Wrap(
            direction: Axis.horizontal,
            children: [
              ...List.generate(
                devices.length,
                (index) => DeviceCard(
                  isToggled: false,
                  device: devices[index].name,
                  icon: devices[index].icon,
                ),
              )
              
            ],
          ),
        ],
      ),
    );
  }
}

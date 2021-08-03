import 'package:flutter/material.dart';

class Device {
  final String name;
  final IconData icon;

  Device({required this.name, required this.icon});
}

// Demo List of devices
List<Device> devices = [user1, user2, user3, user4];

// demo device
Device user1 = Device(name: "Smart\nSpotlight", icon: Icons.light_outlined);
Device user2 = Device(name: "Smart\nTV", icon: Icons.connected_tv_rounded);
Device user3 =
    Device(name: "Air\nSamsung F7", icon: Icons.smart_display_rounded);
Device user4 = Device(name: "Air\nCondition", icon: Icons.ac_unit_outlined);

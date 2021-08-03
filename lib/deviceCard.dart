import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class DeviceCard extends StatefulWidget {
  DeviceCard({
    Key? key,
    required this.isToggled,
    required this.device,
    required this.icon,
  }) : super(key: key);

  bool isToggled;
  final String device;
  final IconData icon;

  @override
  _DeviceCardState createState() => _DeviceCardState();
}

class _DeviceCardState extends State<DeviceCard> {
  //List<User> devices = [user1, user2, user3, user4];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * .37,
        height: MediaQuery.of(context).size.height * .17,
        decoration: BoxDecoration(
          color: widget.isToggled ? Colors.grey.withOpacity(.1) : Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 20,
              child: Icon(widget.icon),
            ),
            Positioned(
                top: 7,
                right: 15,
                child: FlutterSwitch(
                  activeToggleColor: Colors.black,
                  activeColor: Colors.white,
                  value: widget.isToggled,
                  onToggle: (value) {
                    setState(() {
                      widget.isToggled = value;
                    });
                  },
                  height: 30,
                  padding: 5,
                  width: 50,
                )),
            Positioned(
                bottom: 20,
                left: 20,
                child: Text(
                  //"Smart\nSpotlight",
                  widget.device,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

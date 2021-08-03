import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int selectedTab = 0;
  List<String> tab = ["Temperature", "Statistics"];
  List<IconData> icons = [Icons.thermostat_rounded, Icons.show_chart_rounded];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                ...List.generate(tab.length, (index) => buildTab(index)),
              ],
            ),
          ),
        ),
        SizedBox(height: 70),
        Container(
          child: Align(
              alignment: Alignment.center,
              child: Text(
                "21°c",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 60,
                ),
              )),
          height: MediaQuery.of(context).size.width * .5,
          width: MediaQuery.of(context).size.width * .5,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                spreadRadius: 30,
                blurRadius: 0,
                color: Colors.grey.withOpacity(0.1),
              ),
            ],
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
        Spacer(flex: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text(
                  "Current temp.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  "28°",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "Current humidity.",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                Text(
                  "52%",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(flex: 1),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Text(
                  "Automatic",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.remove),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Center(
                child: Icon(Icons.add),
              ),
            ),
          ],
        ),
        Spacer(flex: 1),
      ],
    );
  }




  GestureDetector buildTab(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedTab = index;
          });
        },
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width * .4,
          decoration: BoxDecoration(
            color: index == selectedTab ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                Icon(icons[index],
                    color: index == selectedTab ? Colors.white : Colors.black),
                Text(tab[index],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: index == selectedTab ? Colors.white : Colors.black,
                    )),
              ],
            ),
          ),
        ),
      );
}

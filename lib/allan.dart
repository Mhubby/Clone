import 'package:flutter/material.dart';


class Allan extends StatelessWidget {
  const Allan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Welcome Home\nAllan Walker",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Image.asset(
            "assets/images/heating.png",
            height: 200,
            width: 200,
          ),
        ],
      ),
    );
  }
}

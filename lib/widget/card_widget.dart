import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView(
          children: [
            buildCard(Icons.abc, "icons abc "),
            buildCard(Icons.ac_unit, "icons ac unit "),
          ],
        ),
      ),
    );
  }

  Card buildCard(IconData iconData, String textData) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(iconData),
          ),
          Text(
            textData,
            style: TextStyle(
              fontSize: 15,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

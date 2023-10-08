import 'package:flutter/material.dart';

class MyFlexibelWidget extends StatelessWidget {
  const MyFlexibelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flexible Widget"),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.yellow,
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}

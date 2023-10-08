import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedWidget extends StatefulWidget {
  const MyAnimatedWidget({super.key});

  @override
  State<MyAnimatedWidget> createState() => _MyAnimatedWidgetState();
}

class _MyAnimatedWidgetState extends State<MyAnimatedWidget> {
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Scaffold(
      appBar: AppBar(
        title: Text("Latihan Animeted Continer"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            width: (50.0 + random.nextInt(101)),
            height: (50.0 + random.nextInt(101)),
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256),
                random.nextInt(256)),
            duration: Duration(
              // seconds: 1,
              milliseconds: 50,
            ),
          ),
        ),
      ),
    );
  }
}

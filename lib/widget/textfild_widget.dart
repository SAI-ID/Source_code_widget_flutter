import 'package:flutter/material.dart';

class TextFildWidget extends StatefulWidget {
  const TextFildWidget({super.key});

  @override
  State<TextFildWidget> createState() => _TextFildWidgetState();
}

class _TextFildWidgetState extends State<TextFildWidget> {
  TextEditingController fildControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFild widget"),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              maxLength: 10,
              obscureText: true,
              controller: fildControler,
              onChanged: (value) {
                setState(() {});
              },
            ),
            Text(fildControler.text),
          ],
        ),
      ),
    );
  }
}

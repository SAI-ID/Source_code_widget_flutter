import 'package:flutter/material.dart';

class MyStackAlign extends StatelessWidget {
  const MyStackAlign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack dan Align"),
      ),
      body: Stack(
        children: [
          //bg
          Flexible(
            flex: 1,
            child: Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        ),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.black12,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                      ],
                    )),
              ],
            ),
          ),
          //txt
          ListView.builder(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  "ini adalah teks yang berada di lapisan ke 2 stack",
                  style: TextStyle(fontSize: 30),
                ),
              );
            },
            itemCount: 20,
          ),
          // btn
          Align(
            alignment: Alignment(0, 0.9),
            child: FilledButton(
              onPressed: () {},
              child: Text("button"),
            ),
          )
        ],
      ),
    );
  }
}

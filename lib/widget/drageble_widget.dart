import 'package:flutter/material.dart';

class MyDrageble extends StatefulWidget {
  const MyDrageble({super.key});

  @override
  State<MyDrageble> createState() => _MyDragebleState();
}

class _MyDragebleState extends State<MyDrageble> {
  Color color1 = Colors.red;
  Color color2 = Colors.green;
  Color? targetColor;
  bool isTerima = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drageble item"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                feedback: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: color1.withOpacity(0.7),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: Colors.black26,
                    elevation: 0,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: color1,
                    elevation: 3,
                  ),
                ),
              ),
              Draggable<Color>(
                data: color2,
                feedback: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: color2.withOpacity(0.7),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: Colors.black26,
                    elevation: 0,
                  ),
                ),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Material(
                    shape: CircleBorder(),
                    color: color2,
                    elevation: 3,
                  ),
                ),
              ),
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (data) => true,
            onAccept: (value) {
              targetColor = value;
              isTerima = true;
            },
            builder: (context, candidateData, rejectedData) {
              print("context : ${context}");
              print("candi : ${candidateData}");
              print("reject : ${rejectedData}");

              return (isTerima)
                  ? SizedBox(
                      height: 100,
                      width: 100,
                      child: Material(
                        shape: CircleBorder(),
                        color: targetColor,
                      ),
                    )
                  : SizedBox(
                      height: 50,
                      width: 50,
                      child: Material(
                        shape: CircleBorder(),
                        color: Colors.black26,
                      ),
                    );
            },
          ),
        ],
      ),
    );
  }
}

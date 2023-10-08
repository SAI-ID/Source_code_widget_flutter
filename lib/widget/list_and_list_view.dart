import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  const MyListView({super.key});

  @override
  State<MyListView> createState() => _ListViewState();
}

class _ListViewState extends State<MyListView> {
  List<Widget> widgets = List.generate(15, (index) {
    return Text(
      'data ke- ' + (index + 1).toString(),
      style: TextStyle(
        fontSize: 30,
      ),
    );
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("list view"),
        ),
        body: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      int conter = widgets.length + 1;
                      widgets.add(Text(
                        'data ke- ' + conter.toString(),
                        style: TextStyle(fontSize: 30),
                      ));
                    });
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      widgets.removeLast();
                    });
                  },
                  child: Text(
                    "Remove",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                ),
              ],
            ),
            Column(
              children: widgets,
            )
          ],
        ));
  }
}

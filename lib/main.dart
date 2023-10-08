import 'package:flutter/material.dart';
// import 'package:try_widget_and_follow_turorial/widget/card_widget.dart';
import 'package:try_widget_and_follow_turorial/widget/textfild_widget.dart';
// import 'package:try_widget_and_follow_turorial/widget/drageble_widget.dart';
// import 'package:try_widget_and_follow_turorial/widget/animatetd_continer_dan_gesture_detektor.dart';
// import 'package:try_widget_and_follow_turorial/widget/flexible_widget.dart';
// import 'package:try_widget_and_follow_turorial/widget/stack_dan_align.dart';
// import 'package:try_widget_and_follow_turorial/widget/list_and_list_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFildWidget(),
    );
  }
}

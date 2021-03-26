import 'package:flutter/material.dart';
import 'package:flutter_dribble_ui/screens/congrats_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CongratsPage(),
    );
  }
}

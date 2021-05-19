import 'package:flutter/material.dart';
import 'package:covidresearch/bottomAppbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid Research',
      theme: new ThemeData(
          primaryColor: Colors.green[300], //const //Color(0xFF02BB9F),
          primaryColorDark: Colors.green[500], //const Color(0xFF167F67),
          accentColor: Colors.green[200] //const Color(0xFFFFAD32),
          ),
      home: BottomBar(),
    );
  }
}

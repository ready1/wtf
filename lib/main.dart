import 'package:flutter/material.dart';
import 'tutorial-01/tutorial-01.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WTF',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Tutorial01(),
    );
  }
}

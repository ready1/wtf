import 'package:flutter/material.dart';

class T01Text extends StatefulWidget {
  @override
  _T01TextState createState() => _T01TextState();
}

class _T01TextState extends State<T01Text> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Text'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

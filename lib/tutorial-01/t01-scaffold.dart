import 'package:flutter/material.dart';

class T01Scaffold extends StatefulWidget {
  @override
  _T01ScaffoldState createState() => _T01ScaffoldState();
}

class _T01ScaffoldState extends State<T01Scaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Scaffold'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

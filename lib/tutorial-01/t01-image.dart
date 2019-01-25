import 'package:flutter/material.dart';

class T01Image extends StatefulWidget {
  @override
  _T01ImageState createState() => _T01ImageState();
}

class _T01ImageState extends State<T01Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Image'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

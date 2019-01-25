import 'package:flutter/material.dart';

class T01Icon extends StatefulWidget {
  @override
  _T01IconState createState() => _T01IconState();
}

class _T01IconState extends State<T01Icon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Icon'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

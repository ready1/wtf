import 'package:flutter/material.dart';

class T01RaisedButton extends StatefulWidget {
  @override
  _T01RaisedButtonState createState() => _T01RaisedButtonState();
}

class _T01RaisedButtonState extends State<T01RaisedButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Raised Button'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

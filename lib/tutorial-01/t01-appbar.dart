import 'package:flutter/material.dart';

class T01Appbar extends StatefulWidget {
  @override
  _T01AppbarState createState() => _T01AppbarState();
}

class _T01AppbarState extends State<T01Appbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Appbar'),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Text('Coming soon'),
        )
    );
  }
}

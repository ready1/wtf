import 'package:flutter/material.dart';
import 'dart:math' as math;

class T01Row extends StatefulWidget {
  @override
  _T01RowState createState() => _T01RowState();
}

class _T01RowState extends State<T01Row> {
  double _columns = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Row'),
        ),
        body: Column(
          children: <Widget>[
            buildRowWidgets(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
              child: Column(
                children: <Widget>[
                  Text('# of Columns in Row ${_columns.round().toString()}'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 1,
                    max: 7,
                    divisions: 7,
                    onChanged: (val) {
                      setState(() => _columns = val);
                    },
                    value: _columns,
                  ),
                ],
              ),
            )
          ],
        )
    );
  }

  Widget buildRowWidgets(){
    List<Widget> list = new List<Widget>();

    for(var i = 0; i < _columns; i++){
      list.add(
        Expanded(child: AnimatedContainer(
          duration: Duration(milliseconds: 250),
          constraints: BoxConstraints.expand(
              height: 200,
          ),
          padding: EdgeInsets.all(20),
          child: new Text('${i+1}'),
          alignment: Alignment.center,
          color: getRandomColor(),
        ))
      );
    }

    return new Row(children: list);
  }

  Color getRandomColor(){
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt() << 0).withOpacity(1.0);
  }
}

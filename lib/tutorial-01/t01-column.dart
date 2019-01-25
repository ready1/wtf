import 'package:flutter/material.dart';
import '../utilities/random-generator.dart';

class T01Column extends StatefulWidget {
  @override
  _T01ColumnState createState() => _T01ColumnState();
}

class _T01ColumnState extends State<T01Column> {
  double _rows = 2;

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
                  Text('# of Rows in Column ${_rows.round().toString()}'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 1,
                    max: 7,
                    divisions: 7,
                    onChanged: (val) {
                      setState(() => _rows = val);
                    },
                    value: _rows,
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

    for(var i = 0; i < _rows; i++){
      list.add(
          AnimatedContainer(
            duration: Duration(milliseconds: 250),
            padding: EdgeInsets.all(20),
            child: new Text('${i+1}'),
            alignment: Alignment.center,
            color: getRandomColor(),
          )
      );
    }

    return new Column(children: list, mainAxisSize: MainAxisSize.max,);
  }
}

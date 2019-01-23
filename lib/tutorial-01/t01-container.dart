import 'package:flutter/material.dart';

class T01Container extends StatefulWidget {
  @override
  _T01ContainerState createState() => _T01ContainerState();
}

class _T01ContainerState extends State<T01Container> {
  double _margin = 0;
  double _padding = 0;
  double _height = 100;
  Alignment alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('Basic Widgets: Container'),
        ),
        body: Column(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 250),
              margin: EdgeInsets.all(_margin),
              constraints: BoxConstraints.expand(
                  height: _height
              ),
              padding: EdgeInsets.all(_padding),
              color: Colors.lightBlue,
              alignment: alignment,
              child: Container(
                margin: EdgeInsets.all(_margin),
                constraints: BoxConstraints.expand(
                    height: _height
                ),
                padding: EdgeInsets.all(_padding),
                color: Colors.lightBlue,
                alignment: alignment,
                child: Container(
                    color: Colors.yellowAccent,
                    width: 1000,
                    alignment: Alignment.center,
                    child: Text('What the Flutter'),
                ),
                transform: Matrix4.rotationZ(0),
              ),
              transform: Matrix4.rotationZ(0),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text('Margin Outside of Blue Container ${_margin.round().toString()}px'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 0.0,
                    max: 100.0,
                    onChanged: (val) {
                      setState(() => _margin = val);
                    },
                    value: _margin,
                  ),
                  Text('Padding Inside of Blue Container ${_padding.round().toString()}px'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 0.0,
                    max: 30.0,
                    onChanged: (val) {
                      setState(() => _padding = val);
                    },
                    value: _padding,
                  ),
                  Text('Height of Blue Container ${_height.round().toString()}px'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 50,
                    max: 250.0,
                    onChanged: (val) {
                      setState(() => _height = val);
                    },
                    value: _height,
                  ),
                  Text('Alignment ${alignment}'),
                ],
              )
            ),
          ],
        )
    );
  }
}

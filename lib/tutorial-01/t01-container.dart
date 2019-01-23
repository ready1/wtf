import 'package:flutter/material.dart';

class T01Container extends StatefulWidget {
  @override
  _T01ContainerState createState() => _T01ContainerState();
}

class _T01ContainerState extends State<T01Container> {
  double _margin = 0;
  double _padding = 0;
  double _height = 100;
  double _radius = 0;
  String _alignment = Alignment.center.toString();
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
              child:  AnimatedContainer(
                duration: Duration(milliseconds: 250),
                decoration: BoxDecoration(
                    color: Colors.yellowAccent,
                    borderRadius: BorderRadius.circular(_radius)
                ),
                width: 1000,
                alignment: alignment,
                child: Text('What the Flutter'),
              ),
              transform: Matrix4.rotationZ(0),
            ),
            Container(
              alignment: Alignment.centerLeft,
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
                  Text('Yellow container circular radius ${_radius.round().toString()}px'),
                  Slider(
                    activeColor: Colors.indigoAccent,
                    min: 0,
                    max: 30.0,
                    onChanged: (val) {
                      setState(() => _radius = val);
                    },
                    value: _radius,
                  ),
                  Text('Text Alignment in Yellow Container'),
                  DropdownButton<String>(
                    items: <String>[
                      Alignment.bottomCenter.toString(), Alignment.bottomLeft.toString(),
                      Alignment.bottomRight.toString(), Alignment.center.toString(),
                      Alignment.centerLeft.toString(), Alignment.centerRight.toString(),
                      Alignment.topCenter.toString(), Alignment.topLeft.toString(),
                      Alignment.topRight.toString(),
                    ].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (val) {
                      switch(val){
                        case 'bottomCenter':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.bottomCenter);
                          break;
                        case 'bottomLeft':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.bottomLeft);
                          break;
                        case 'bottomRight':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.bottomRight);
                          break;
                        case 'center':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.center);
                          break;
                        case 'centerLeft':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.centerLeft);
                          break;
                        case 'centerRight':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.centerRight);
                          break;
                        case 'topCenter':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.topCenter);
                          break;
                        case 'topLeft':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.topLeft);
                          break;
                        case 'topRight':
                          setState(() => _alignment = val);
                          setState(() => alignment = Alignment.topRight);
                          break;
                      }
                    },
                    value: _alignment,
                  )
                ],
              )
            ),
          ],
        )
    );
  }
}

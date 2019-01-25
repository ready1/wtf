import 'package:flutter/material.dart';
import 't01-container.dart';
import 't01-row.dart';
import 't01-column.dart';
import 't01-image.dart';
import 't01-text.dart';
import 't01-icon.dart';
import 't01-raisedbutton.dart';
import 't01-scaffold.dart';
import 't01-appbar.dart';

class Tutorial01 extends StatelessWidget {
  var topics = ['Container','Row', 'Column', 'Image', 'Text', 'Icon', 'Raised Button', 'Scaffold', 'Appbar'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tutorial 01 - Basic Widgets'),
        ),
        body: ListView.builder(
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(topics[position]),
                onTap: () => topicSelected(context, topics[position]),
              ),
            );
          },
          itemCount: topics.length,
        )
    );
  }

  void topicSelected(context, topic){
    var page;

    switch(topic){
      case 'Container':
        page = T01Container();
        break;
      case 'Row':
        page = T01Row();
        break;
      case 'Column':
        page = T01Column();
        break;
      case 'Image':
        page = T01Image();
        break;
      case 'Text':
        page = T01Text();
        break;
      case 'Icon':
        page = T01Icon();
        break;
      case 'Raised Button':
        page = T01RaisedButton();
        break;
      case 'Scaffold':
        page = T01Scaffold();
        break;
      case 'Appbar':
        page = T01Appbar();
        break;
    }

    if(page != null)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

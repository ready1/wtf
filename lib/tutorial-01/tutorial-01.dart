import 'package:flutter/material.dart';
import 't01-container.dart';
import 't01-row.dart';

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
    }

    if(page != null)
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}

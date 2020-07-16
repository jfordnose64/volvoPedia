import 'package:flutter/material.dart';

class Models extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ModelState();
  }
}

class ModelState extends State<Models> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Card(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        const ListTile(
          leading: Icon(Icons.bookmark_border),
          title: Text('Volvo 240'),
          subtitle: Text('Turbo Bricks'),
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('Learn More'),
              onPressed: () {/* ... */},
            )
          ],
        )
      ])),
      Card(
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        const ListTile(
          leading: Icon(Icons.bookmark_border),
          title: Text('Volvo 240'),
          subtitle: Text('Turbo Bricks'),
        ),
        ButtonBar(
          children: <Widget>[
            FlatButton(
              child: const Text('Learn More'),
              onPressed: () {/* ... */},
            )
          ],
        )
      ]))
    ]);
  }
}

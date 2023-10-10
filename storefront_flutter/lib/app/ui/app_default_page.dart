import 'package:flutter/material.dart';

class AppDefaultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AppDefault w'),
        ),
        body: Center(
            child: Column(
            children: <Widget>[new Text('You have pused')
            ],
          )
        ),

        );

  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(CollumnWidget());
}

class CollumnWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:('Widget Collumn'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Column')
        ),
        body: Column(
          children: [
            Text('Kolom 1'),
            Text('Kolom 2'),
            Text('Kolom 3'),
            Text('Kolom 4'),
          ],
        ),
      ),
    );
  }
}
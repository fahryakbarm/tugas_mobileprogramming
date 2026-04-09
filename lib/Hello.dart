import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Flutter pertama',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Flutter')),
        body: Center(
          child: Text('Hello Guys'),
        ),
      ),
    );
    }
}
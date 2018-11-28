import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is my first flutter demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter demo'),
        ),
        body: Center(
          child: Text('Flutter demo body'),
        ),
      ),
    );
  }
}
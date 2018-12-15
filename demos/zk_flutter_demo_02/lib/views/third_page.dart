import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third page'),
      ),
      body: Center(
        child: Text('This is the third page'),
      ),
    );
  }
}
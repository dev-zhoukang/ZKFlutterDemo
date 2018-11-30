import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  FirstPageSatte createState() => FirstPageSatte();
}

class FirstPageSatte extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Text('This is the first page'),
      ),
    );
  }
}
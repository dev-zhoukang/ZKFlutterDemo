import 'package:flutter/material.dart';
import 'package:cctv_news/home/HomeNewsCell.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      title: 'CCTV NRES',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CCTV News'),
        ),
        body: Column(
          children: <Widget>[
            HomeNewsCell(),
            HomeNewsCell(),
          ],
        ),
      ),
    );
  }
}

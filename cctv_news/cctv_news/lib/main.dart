import 'package:flutter/material.dart';
import 'package:cctv_news/components/HomeNewsCell.dart';
import 'package:cctv_news/pages/MainTabPage.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'CCTV NRES',
      home: MainTabPage(),
    );
  }
}

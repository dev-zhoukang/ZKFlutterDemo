import 'package:flutter/material.dart';
import 'package:cctv_news/pages/main_tab_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
      title: 'CCTV NEWS',
      home: MainTabPage(),
    );
  }
}

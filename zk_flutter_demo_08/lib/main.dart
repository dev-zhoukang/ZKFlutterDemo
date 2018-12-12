import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        title: 'ZKDemo',
        home: HomePage('ZKDemo'),
      );
    }
}
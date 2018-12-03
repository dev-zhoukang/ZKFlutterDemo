import 'package:flutter/material.dart';
import './ui/HomePage.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zhou Kang Demo',
      home: HomePage(),
    );
  }
}

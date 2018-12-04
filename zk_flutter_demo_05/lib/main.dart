import 'package:flutter/material.dart';
import './ui/ZKHomePage.dart';
import './ui/ZKPlanetDetail.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Zhou Kang Demo',
      home: ZKHomePage(),
      routes: <String, WidgetBuilder>{
        '/detail': (_) => new ZKPlanetDetail(),
      },
    );
  }
}

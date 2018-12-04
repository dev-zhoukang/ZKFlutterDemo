import 'package:flutter/material.dart';
import './ZKAppBar.dart';

class ZKPlanetDetail extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            ZKAppBar('详情页'),
            Text('我是详情页', style: TextStyle(color: Colors.purple, fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      );
    }
}
import 'package:flutter/material.dart';
import './ZKAppBar.dart';

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Column(
          children: <Widget>[
            ZKAppBar('Zhou Kang Demo'),
          ],
        ),
      );
    }
}
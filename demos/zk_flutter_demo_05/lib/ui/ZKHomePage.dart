import 'package:flutter/material.dart';
import './ZKAppBar.dart';
import './ZKHomePageBody.dart';

class ZKHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ZKAppBar('Zhou Kang Demo'),
          ZKHomePageBody(),
        ],
      ),
    );
  }
}

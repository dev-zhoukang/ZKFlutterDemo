import 'package:flutter/material.dart';

class ZKAppBar extends StatelessWidget {
  final String title;
  final double barHeight = 64.0;
  ZKAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(gradient: LinearGradient(
        colors: [
          Colors.red,
          Colors.green,
        ],
      )),
      height: barHeight,
      padding: EdgeInsets.only(top: statusBarHeight),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              fontSize: 19, color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}

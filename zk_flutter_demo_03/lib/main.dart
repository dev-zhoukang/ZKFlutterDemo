import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: '周杰伦',
        home: HomePage(),
      );
    }
}

class HomePage extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      Widget titleSection = Container(
        padding: EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '周杰伦',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '雨纷纷，旧故里草木深',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('88'),
          ],
        ),
      );

      return Material(
        child: titleSection,
      );
    }
}
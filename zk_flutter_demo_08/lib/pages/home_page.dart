import 'package:flutter/material.dart';
import '../containers/counter/counter.dart';
import '../containers/counter/increase_counter.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage(this.title);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have click the button many times'),
            Counter(),
          ],
        ),
      ),
      floatingActionButton: IncreseCountButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}

import 'package:flutter/material.dart';

class AddDogFormPage extends StatefulWidget {
  @override
    _AddDogFormPageState createState() => _AddDogFormPageState();
}

class _AddDogFormPageState extends State<AddDogFormPage> {
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text('Add a dog')),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: '请输入名称',
                ),
              )
            ],
          ),
        ),
      );
    }
}
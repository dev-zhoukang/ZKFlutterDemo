import 'package:flutter/material.dart';

class AddDogFormPage extends StatefulWidget {
  @override
    _AddDogFormPageState createState() => _AddDogFormPageState();
}

class _AddDogFormPageState extends State<AddDogFormPage> {
  final double kDefaultMargin = 8.0;

  void submitBtnDidClick() {
    print('submitBtnDidClick');
  }

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
              ),
              SizedBox(height: kDefaultMargin),
              TextField(
                decoration: InputDecoration(
                  labelText: '请输入地址',
                ),
              ),
              SizedBox(height: kDefaultMargin),
              TextField(
                decoration: InputDecoration(
                  labelText: '请输入描述',
                ),
              ),
              SizedBox(height: 20),
              RaisedButton(
                onPressed: submitBtnDidClick,
                color: Colors.orange,
                child: Text('提交', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      );
    }
}
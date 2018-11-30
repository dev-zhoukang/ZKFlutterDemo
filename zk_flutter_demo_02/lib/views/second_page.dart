import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  SecondPageState createState() => SecondPageState();
}

class SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Container(
        padding: EdgeInsets.all(0),
        child: ZKListView()
      ),
    );
  }
}

class ZKListView extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return ZKListViewState();
    }
}

class ZKListViewState extends State<ZKListView> {
  @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int i) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('我是周杰伦', style: TextStyle(color: Color(0x88222222), fontSize: 13)),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('我在北京等你', style: TextStyle(color: Color(0xff222222), fontSize: 15)),
                  ),
                ],
              ),
            ],
          );
        }
      );
    }
}
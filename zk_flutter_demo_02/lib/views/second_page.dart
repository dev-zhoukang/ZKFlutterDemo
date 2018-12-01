import 'package:flutter/material.dart';
import '../components/global_config.dart';

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
      return Container(
        color: GlobalConfig.global_color_theme,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(6)), color: Colors.white),
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 6.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('我是周杰伦', style: TextStyle(color: Color(0x88222222), fontSize: 13)),
                      ),
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
              ),
            );
          }
        ),
      );
    }
}
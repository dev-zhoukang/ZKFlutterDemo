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
        backgroundColor: GlobalConfig.global_color_theme,
      ),
      body: Container(
          decoration: BoxDecoration(color: GlobalConfig.global_color_theme),
          child: ZKListView()),
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
      child: ListView.builder(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          itemCount: 100,
          itemBuilder: (BuildContext context, int i) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                  color: Colors.white),
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 6.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Colors.red,
                      height: 80,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('我是周杰伦',
                                style: TextStyle(
                                    color: GlobalConfig.global_color_subtitle,
                                    fontSize: 13)),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('我在北京等你',
                                style: TextStyle(
                                    color: GlobalConfig.global_color_title,
                                    fontSize: 15)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

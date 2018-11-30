import 'package:flutter/material.dart';

class ZKList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListState();
  }
}

class ListState extends State<ZKList> {
  tapCell() {
    print('0000');
  }
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: ListTile(
              trailing: Icon(Icons.keyboard_arrow_right, color: Colors.red),
              onTap: tapCell(),
              subtitle: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('标题',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w400)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[Text('时间'), Text('2019-10-01 12:10')],
                    ),
                    Row(
                      children: <Widget>[
                        Flexible(
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                            child: Text(
                                '应用全网广告投放大数据，多维度策略全面覆盖，为广告主提供企业级的防作弊保护，让作弊行为无所遁形。'),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

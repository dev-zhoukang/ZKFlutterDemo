import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKHomePageBody extends StatelessWidget {
  List<ZKPlanetModel> planetModels = [
    ZKPlanetModel(
      id: '1',
      name: '火星',
      location: '北京市 朝阳区',
      distance: '2432 km',
      gravity: '3.5 m/s',
      descrition: '这是一首简单的小情歌',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '1',
      name: '月球',
      location: '河南省 商丘市',
      distance: '3455 km',
      gravity: '3.5 m/s',
      descrition: '满城尽带黄金甲',
      image: 'images/mars.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ZKHomeCell(planetModels[0]),
        ZKHomeCell(planetModels[1]),
      ],
    );
  }
}

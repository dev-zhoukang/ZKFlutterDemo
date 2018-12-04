import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKHomePageBody extends StatelessWidget {
  List<ZKPlanetModel> planetModels = [
    ZKPlanetModel(
      id: '1',
      name: '火星',
      location: '北京市 朝阳区',
      distance: '2432 km',
      gravity: '53.5 m/s',
      descrition: '这是一首简单的小情歌',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '2',
      name: '月球',
      location: '河南省 商丘市',
      distance: '3455 km',
      gravity: '8.99 m/s',
      descrition: '满城尽带黄金甲',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '3',
      name: '月球',
      location: '河南省 商丘市',
      distance: '3455 km',
      gravity: '8.99 m/s',
      descrition: '满城尽带黄金甲',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '4',
      name: '月球',
      location: '河南省 商丘市',
      distance: '3455 km',
      gravity: '8.99 m/s',
      descrition: '满城尽带黄金甲',
      image: 'images/mars.png',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => new ZKHomeCell(planetModels[index]),
        itemCount: planetModels.length,
        itemExtent: 152.0,
        padding: EdgeInsets.symmetric(vertical: 16.0),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKHomePageBody extends StatelessWidget {
  List<ZKPlanetModel> planetModels = [
    ZKPlanetModel(
      id: '1',
      name: 'Mars',
      location: 'Beijing',
      distance: '232 Km',
      gravity: '3.5 m/s',
      descrition: 'Lorem ipsum',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '1',
      name: 'Mars',
      location: 'Beijing',
      distance: '232 Km',
      gravity: '3.5 m/s',
      descrition: 'Lorem ipsum',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '1',
      name: 'Mars',
      location: 'Beijing',
      distance: '232 Km',
      gravity: '3.5 m/s',
      descrition: 'Lorem ipsum',
      image: 'images/mars.png',
    ),
    ZKPlanetModel(
      id: '1',
      name: 'Mars',
      location: 'Beijing',
      distance: '232 Km',
      gravity: '3.5 m/s',
      descrition: 'Lorem ipsum',
      image: 'images/mars.png',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ZKHomeCell(planetModels[0]),
        ZKHomeCell(planetModels[1]),
        ZKHomeCell(planetModels[2]),
      ],
    );
  }
}

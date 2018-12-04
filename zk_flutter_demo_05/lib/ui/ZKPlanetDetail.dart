import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKPlanetDetail extends StatelessWidget {
  final ZKPlanetModel model;
  ZKPlanetDetail(this.model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('详情页')),
        body: Center(
            child: Column(
          children: <Widget>[
            FloatingActionButton(
              child: Icon(Icons.arrow_back_ios),
              onPressed: () => Navigator.pop(context),
            ),
            Text(model.name,
                style: TextStyle(
                    color: Colors.purple,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            Hero(
              tag: 'planet-hero-${model.id}',
              child: Image(
                  image: AssetImage(model.image), width: 96, height: 96),
            ),
          ],
        )));
  }
}

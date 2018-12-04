import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKPlanetDetail extends StatelessWidget {
  final ZKPlanetModel model;
  ZKPlanetDetail(this.model);

  @override
  Widget build(BuildContext context) {
    final _buildBackground = Container(
      constraints: BoxConstraints.expand(height: 300.0),
      child: Image.network(model.picture, fit: BoxFit.cover, height: 300.0),
    );

    final _buildGradient = Container(
      margin: EdgeInsets.only(top: 190.0),
      height: 110.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: <Color>[Color(0x000C8484), Color(0xFF0C8484)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      )),
    );

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF0C8484),
        child: Stack(
          children: <Widget>[
            _buildBackground,
            _buildGradient,
          ],
        ),
      ),
    );
  }
}

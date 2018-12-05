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

    final _buildContent = ListView(
      padding: EdgeInsets.only(top: 80, bottom: 40, left: 20, right: 20),
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(top: 50),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff303066),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(model.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text(model.address,
                      style: TextStyle(
                          color: Colors.white54,
                          fontSize: 15,
                          fontWeight: FontWeight.w400)),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.local_airport,
                          color: Colors.white54, size: 15),
                      SizedBox(width: 4),
                      Text(model.gender,
                          style:
                              TextStyle(color: Colors.white54, fontSize: 13)),
                      SizedBox(width: 20),
                      Icon(Icons.network_cell, color: Colors.white54, size: 15),
                      SizedBox(width: 4),
                      Text(model.age,
                          style:
                              TextStyle(color: Colors.white54, fontSize: 13)),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'people-id-${model.id}',
                  child: Image(
                    image: AssetImage(model.image),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Text('简介',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white)),
        SizedBox(height: 6),
        Container(
          constraints: BoxConstraints.tightFor(width: 60, height: 2),
          color: Colors.orange,
        ),
        SizedBox(height: 6),
        Container(
            color: Color(0x990C8484),
            child: Text(model.descrition,
                style: TextStyle(
                    color: Colors.white54, fontSize: 13.5, height: 1.1))),
      ],
    );

    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Color(0xFF0C8484),
        child: Stack(
          children: <Widget>[_buildBackground, _buildGradient, _buildContent],
        ),
      ),
    );
  }
}

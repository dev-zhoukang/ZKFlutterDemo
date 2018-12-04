import 'package:flutter/material.dart';

class ZKPlanetModel {
  final String id;
  final String name;
  final String location;
  final String distance;
  final String gravity;
  final String descrition;
  final String image;

  const ZKPlanetModel(
      {this.id,
      this.name,
      this.location,
      this.distance,
      this.gravity,
      this.descrition,
      this.image});
}

class ZKHomeCell extends StatelessWidget {
  final ZKPlanetModel planetModel;
  ZKHomeCell(this.planetModel);

  @override
  Widget build(BuildContext context) {
    final planetImageView = Container(
      alignment: FractionalOffset.centerLeft,
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      child: Image(
        image: AssetImage(planetModel.image),
        height: 92.0,
        width: 92.0,
      ),
    );

    final planetCard = Container(
      height: 124.0,
      margin: EdgeInsets.only(left: 46.0),
      decoration: BoxDecoration(
        color: Color(0xFF333366),
        borderRadius: BorderRadius.circular(8.0),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 16.0,
      ),
      child: Stack(
        children: <Widget>[planetCard, planetImageView],
      ),
    );
  }
}

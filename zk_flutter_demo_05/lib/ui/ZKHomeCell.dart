import 'package:flutter/material.dart';
import './ZKPlanetDetail.dart';

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
      child: Hero(
        tag: 'planet-hero-${planetModel.id}',
        child: Image(
          image: AssetImage(planetModel.image),
          height: 92.0,
          width: 92.0,
        ),
      ),
    );

    final distanceTextStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.white54,
      fontWeight: FontWeight.w100,
    );

    final planetCardContent = Container(
      padding: EdgeInsets.only(left: 60, top: 20, right: 10),
      constraints: BoxConstraints.expand(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            planetModel.name,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 6.0),
          Text(
            planetModel.location,
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white70,
            ),
          ),
          SizedBox(height: 15.0),
          Row(
            children: <Widget>[
              Icon(Icons.my_location, color: Colors.white30, size: 15),
              SizedBox(width: 5),
              Text(planetModel.distance, style: distanceTextStyle),
              SizedBox(width: 15),
              Icon(Icons.notifications_active, color: Colors.white30, size: 15),
              SizedBox(width: 5),
              Text(planetModel.gravity, style: distanceTextStyle),
            ],
          ),
        ],
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
      child: planetCardContent,
    );
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => ZKPlanetDetail(planetModel))),
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24.0,
          vertical: 16.0,
        ),
        child: Stack(
          children: <Widget>[planetCard, planetImageView],
        ),
      ),
    );
  }
}

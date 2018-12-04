import 'package:flutter/material.dart';
import './ZKHomeCell.dart';

class ZKPlanetDetail extends StatelessWidget {
  final ZKPlanetModel model;
  ZKPlanetDetail(this.model);

  final buildBgImageView = Container(
    alignment: FractionalOffset.topCenter,
    child: Image(
      image: NetworkImage(
          'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543934675275&di=af293a065f4dbbe2a22711a8264e2bb7&imgtype=0&src=http%3A%2F%2Fbbsfiles.vivo.com.cn%2Fvivobbs%2Fattachment%2Fforum%2F201702%2F21%2F093712l1i9fo1op8iosdsn.jpg'),
    ),
  );

  final buildGradientBgView = Container(
    alignment: FractionalOffset.bottomCenter,
    height: 200.0,
    decoration: BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[Colors.transparent, Colors.blueAccent],
    )),
  );

  final buildCardView = Container(
    height: 100,
    width: 200,
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(color: Color(0xff303066)),
    child: Column(
      children: <Widget>[
        Text('火星', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400)),
        Text('火影描述', style: TextStyle(color: Colors.white54, fontSize: 15)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.local_airport, color: Colors.white54),
            SizedBox(width: 5),
            Text('3.00', style: TextStyle(color: Colors.white54, fontSize: 13)),
          ],
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildBgImageView,
          buildCardView,
        ],
      ),
    );
  }
}

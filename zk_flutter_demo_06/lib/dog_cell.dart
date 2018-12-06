import 'package:flutter/material.dart';
import 'dog_model.dart';

class DogCell extends StatefulWidget {
  final Dog dogModel;
  DogCell(this.dogModel);

  @override
  DogCellState createState() => DogCellState();
}

class DogCellState extends State<DogCell> {
  _buildAvatarView() {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 20.0),
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
            image: AssetImage('images/dog_default.png'), fit: BoxFit.cover),
      ),
    );
  }

  _buildContentView() {
    return Container(
      margin: EdgeInsets.only(left: 70, right: 30, top: 10, bottom: 10),
      padding: EdgeInsets.only(left: 40, top: 15, bottom: 10, right: 20),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(7),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: Offset(5.0, 10.0)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            widget.dogModel.name,
            style: ZKTextStyle.titleTextStyle,
          ),
          SizedBox(height: 3),
          Text(widget.dogModel.location, style: ZKTextStyle.subtitleTextStyle),
          SizedBox(height: 3),
          Row(
            children: <Widget>[
              Icon(Icons.star, size: 15, color: Colors.white),
              Text(' : ${widget.dogModel.rating} / 10', style: ZKTextStyle.subsubtitleTextStyle),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: Stack(
        children: <Widget>[
          _buildContentView(),
          _buildAvatarView(),
        ],
      ),
    );
  }
}

class ZKTextStyle {
  static final baseTextStyle = const TextStyle(
    color: Colors.white,
  );
  static final titleTextStyle = 
  baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500);
  static final subtitleTextStyle = baseTextStyle.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w300,
  );
  static final subsubtitleTextStyle = baseTextStyle.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w200,
  );
}

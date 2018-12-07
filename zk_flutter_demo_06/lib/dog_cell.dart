import 'package:flutter/material.dart';
import 'dog_model.dart';
import 'dog_detail.dart';

class DogCell extends StatefulWidget {
  final Dog dogModel;
  DogCell(this.dogModel);

  @override
  _DogCellState createState() => _DogCellState();
}

class _DogCellState extends State<DogCell> {
  String imageUrl;

  Widget get dogImage {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(imageUrl ?? ''),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget get dogCard {
    return Container(
      width: 290.0,
      height: 115.0,
      child: Card(
        color: Colors.black87,
        child: Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(widget.dogModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline
                      .copyWith(color: Colors.white)),
              Text(widget.dogModel.location,
                  style: Theme.of(context)
                      .textTheme
                      .subhead
                      .copyWith(color: Colors.white)),
              Row(
                children: <Widget>[
                  Icon(Icons.star, color: Colors.white),
                  Text(': ${widget.dogModel.rating} / 10',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(color: Colors.white))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void renderDogPic() async {
    await widget.dogModel.getImageUrl();
    setState(() {
      imageUrl = widget.dogModel.imageUrl;
    });
  }

  @override
  void initState() {
    super.initState();
    renderDogPic();
  }

  void showDogDetailPage() {
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return DogDetailPage(widget.dogModel);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: showDogDetailPage,
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        height: 115.0,
        child: Stack(
          children: <Widget>[
            Positioned(left: 50.0, child: dogCard),
            Positioned(top: 7.5, child: dogImage),
          ],
        ),
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'dog_model.dart';

class DogDetailPage extends StatefulWidget {
  final Dog dog;
  DogDetailPage(this.dog);

  @override
  _DogDetailPageState createState() => _DogDetailPageState();
}

class _DogDetailPageState extends State<DogDetailPage> {
  final double dogAvatarSize = 150.0;
  double ratingSliderValue = 0.0;

  Widget get dogImage {
    return Container(
      width: dogAvatarSize,
      height: dogAvatarSize,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: <BoxShadow>[
            const BoxShadow(
                offset: const Offset(1.0, 2.0),
                blurRadius: 2.0,
                spreadRadius: -1.0,
                color: const Color(0x33000000)),
            const BoxShadow(
                offset: const Offset(2.0, 1.0),
                blurRadius: 3.0,
                spreadRadius: 0.0,
                color: const Color(0x24000000)),
            const BoxShadow(
                offset: const Offset(3.0, 1.0),
                blurRadius: 4.0,
                spreadRadius: 2.0,
                color: const Color(0x1F000000)),
          ],
          image: DecorationImage(
            image: NetworkImage(widget.dog.imageUrl),
            fit: BoxFit.cover,
          )),
    );
  }

  Widget get rating {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.star, color: Colors.white, size: 40.0),
        Text('${widget.dog.rating} / 10',
            style: Theme.of(context).textTheme.display2),
      ],
    );
  }

  Widget get ratingSlider {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 1,
          child: Slider(
            onChanged: (value) {
              print(value);
              setState(() {
                ratingSliderValue = value;
              });
            },
            value: ratingSliderValue,
          ),
        ),
        Text('${(ratingSliderValue * 10).toInt()}'),
      ],
    );
  }

  void submitBtnAction(BuildContext context) {
    if (ratingSliderValue < 10) {
      _ratingErrorDialog();
    } else {
      Navigator.pop(context, {'rating': ratingSliderValue});
    }
  }

  Widget get submitBtn {
    return Container(
      child: RaisedButton(
        onPressed: () => submitBtnAction(context),
        color: Colors.purple,
        child: Text('提交', style: TextStyle(color: Colors.white)),
      ),
    );
  }

  Widget get dogProfile {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: <Color>[Colors.red, Colors.orange],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          dogImage,
          Text('${widget.dog.name}', style: TextStyle(fontSize: 32.0)),
          Text('${widget.dog.location}', style: TextStyle(fontSize: 20.0)),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: Text('${widget.dog.description}'),
          ),
          rating,
          ratingSlider,
          submitBtn,
        ],
      ),
    );
  }

  Future<Null> _ratingErrorDialog() async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error!'),
          content: Text('They are good dogs'),
          actions: <Widget>[
            FlatButton(
              child: Text('Try again'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.dog.name)),
      body: dogProfile,
    );
  }
}

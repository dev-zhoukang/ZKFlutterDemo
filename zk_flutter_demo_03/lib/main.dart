import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '周杰伦',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() {
    return _FavoriteWidgetState();
  }
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 41;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: _isFavorited ? Icon(Icons.star) : Icon(Icons.star_border),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(),
        
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding:
          const EdgeInsets.only(left: 32.0, top: 32.0, right: 32.0, bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    '菊花台，满地伤',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '这是一首描写外出征战的将军与独自在家守侯的妻子互相思念的一首歌曲，歌词婉转动人，含蓄哀伤，配合JAY独门中国古典曲风，可谓经典歌曲（个人认为已超越〈东风破〉〈发如雪〉）。',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Column buildButtonColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            buildButtonColumn(Icons.call, 'Call'),
            buildButtonColumn(Icons.near_me, 'Route'),
            buildButtonColumn(Icons.share, 'Share'),
          ],
        ),
      ),
    );

    Widget contentTextSection = Container(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 10.0),
      child: Text(
        '这首歌的旋律太美，似乎只有杰伦能作出这样的旋律，而阿郎的词也是配的恰到好处，丝毫没有打乱旋律的完整性，没有任何华丽的词藻，但每句都透着悲伤，编曲上更是锦上添花，钟兴民用他最拿手的弦乐点缀上零星的吉他，把整个歌曲定格在忧伤的氛围。虽然没有这样的经历，但我仍能感觉到歌中的伤心欲绝，那种失恋后自己假装快乐，其实心里满是诀别的伤痛，特别是结尾处几句略带哭腔的唱法，每次听都能戳中泪点。',
        softWrap: true,
      ),
    );

    Widget imageContainer = Container(
      child: Image.asset(
        'images/jaychou_logo.jpg',
        height: 240.0,
        fit: BoxFit.cover,
      ),
    );

    return Material(
      child: ListView(
        children: <Widget>[
          imageContainer,
          titleSection,
          contentTextSection,
          buttonSection,
        ],
      ),
    );
  }
}

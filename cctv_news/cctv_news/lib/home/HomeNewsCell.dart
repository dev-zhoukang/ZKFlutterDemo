import 'package:flutter/material.dart';

class HomeNewsCell extends StatelessWidget {
  Widget get _cellContentView {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '继山东编导艺考联考被曝疑似出现泄题和作弊的情况。江西编导艺考联考也被曝疑似出现泄题和作弊的情况。',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xff111111),
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              Container(
                width: 50.0,
                height: 20.0,
                margin: EdgeInsets.only(top: 6),
                child: ButtonTheme(
                  buttonColor: Color(0xff1C64CF),
                  shape: StadiumBorder(),
                  child: RaisedButton(
                    onPressed: () => print('test'),
                    padding: EdgeInsets.all(2.0),
                    child: Text(
                      '听新闻',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: 85.0,
          width: 115.0,
          margin: EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              image: AssetImage('images/news_image.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 115.0,
      child: Column(
        children: <Widget>[
          // 内容视图
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: _cellContentView,
          ),
          // 分割线
          Container(
            margin: EdgeInsets.only(top: 4.0),
            color: Color(0xffeaeaea),
            constraints: BoxConstraints.expand(height: 4.0),
          )
        ],
      ),
    );
  }
}

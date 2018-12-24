import 'package:flutter/material.dart';
import 'package:cctv_news/models/NewsModel.dart';
import 'package:cctv_news/pages/NewsDetailPage.dart';

class HomeNewsCell extends StatelessWidget {
  final NewsModel model;
  HomeNewsCell({
    @required this.model,
  });

  Widget get _cellContentView {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 90.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color(0xff111111),
                    fontWeight: FontWeight.w400,
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
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          height: 85.0,
          width: 115.0,
          decoration: BoxDecoration(
            color: Color(0xffeaeaea),
            borderRadius: BorderRadius.circular(5.0),
            image: DecorationImage(
              // image: AssetImage('images/news_image.jpg'),
              image: NetworkImage(model.imgUrlString),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsDetailPage();
        }));
      },
      child: Container(
        height: 110.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      ),
    );
  }
}

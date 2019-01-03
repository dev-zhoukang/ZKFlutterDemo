import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:cctv_news/models/news_model.dart';

class NewsDetailPage extends StatefulWidget {
  final String newsID;
  NewsDetailPage({
    @required this.newsID,
  });

  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  NewsModel _model;

  Future<Null> getNewsContent() async {
    final String urlString =
        'http://api.cportal.cctv.com/api/rest/articleInfo?cb=test.setMyArticalContent&id=${widget.newsID}';

    final response = await http.get(urlString);
    String body =
        response.body.replaceAll(RegExp(r'test.setMyArticalContent\('), '');
    body = body.substring(0, body.length - 1);
    if (response.statusCode == 200) {
      Map dataDict = json.decode(body) as Map;
      NewsModel model = NewsModel.fromNewsDetailDict(dataDict);
      setState(() {
        _model = model;
      });
    } else {
      throw (Exception('加载新闻详情出错'));
    }
  }

  @override
  void initState() {
    super.initState();
    getNewsContent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻详情'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Text(_model?.content ?? '加载中...'),
            ),
          )
        ],
      ),
    );
  }
}

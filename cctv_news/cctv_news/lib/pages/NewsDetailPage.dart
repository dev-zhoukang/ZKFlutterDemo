import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class NewsDetailPage extends StatefulWidget {
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  NewsDetailModel _model;

  Future<Null> getNewsContent() async {
    final response = await http.get(
        'http://api.cportal.cctv.com/api/rest/articleInfo?id=Arti9ldDiJbWDaaiNAn946e1181226&cb=test.setMyArticalContent');
    String body =
        response.body.replaceAll(RegExp(r'test.setMyArticalContent\('), '');
    body = body.substring(0, body.length - 1);
    if (response.statusCode == 200) {
      Map dataDict = json.decode(body) as Map;
      NewsDetailModel model = NewsDetailModel.fromJson(dataDict);
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
      body: Text(_model?.content),
    );
  }
}

class NewsDetailModel {
  final String title;
  final String content;
  final String source;
  final String detailUrl;

  NewsDetailModel({
    this.title,
    this.content,
    this.source,
    this.detailUrl,
  });

  factory NewsDetailModel.fromJson(Map<String, dynamic> map) {
    return NewsDetailModel(
      title: map['title'],
      content: map['content'],
      source: map['source'],
      detailUrl: map['url'],
    );
  }
}

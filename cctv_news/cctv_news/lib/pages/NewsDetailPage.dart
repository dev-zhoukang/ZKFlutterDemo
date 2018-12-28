import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';
import 'dart:io';
import 'dart:convert';

class NewsDetailPage extends StatefulWidget {
  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  Future<String> getNewsContent() async {
    Dio http = Dio();
    var response = await http.get(
        'http://api.cportal.cctv.com/api/rest/articleInfo?id=ArtikCPksjo4zlQEZuocU6z8181226&cb=test.setMyArticalContent');
    // response = response.replaceAll(new RegExp(r'test.setMyArticalContent'), '');
    print('=======>$response');
    return response.toString();
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
      body: Center(
        child: Text('data'),
      ),
    );
  }
}

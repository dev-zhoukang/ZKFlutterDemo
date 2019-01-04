import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:cctv_news/models/news_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class NewsDetailPage extends StatefulWidget {
  final String newsID;
  NewsDetailPage({
    @required this.newsID,
  });

  _NewsDetailPageState createState() => _NewsDetailPageState();
}

class _NewsDetailPageState extends State<NewsDetailPage> {
  NewsModel _model;
  InAppWebView webView;
  InAppWebViewController inAppWebViewController;

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

      _writeHtmlContentToDisk('test');

      var documentDir = await getApplicationDocumentsDirectory();
      String documentPath = documentDir.path;
      File contentFile = File('$documentPath/test.data');

      setState(() {
        _model = model;
      });
    } else {
      throw (Exception('加载新闻详情出错'));
    }
  }

  Future<Null> _writeHtmlContentToDisk(String dataString) async {
    String filePath = await _filePath;
    File newsFile = File(filePath);
    await newsFile.writeAsString(dataString);
  }

  Future<String> get _filePath async {
    Directory docDir = await getApplicationDocumentsDirectory();
    String fullPath = '${docDir.path}/news.txt';
    return fullPath;
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
        body: NativeWebView(
          webUrl: 'assets/test_news.html',
          webRect: Rect.fromLTRB(0.0, 0.0, 200.0, 200.0),
        ));
  }
}

class NativeWebView extends StatelessWidget {
  String webUrl;
  final Rect webRect;
  InAppWebViewController webViewController;

  NativeWebView({Key key, this.webUrl, this.webRect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    InAppWebView webWidget = new InAppWebView(
        initialUrl: webUrl,
        initialHeaders: {},
        initialOptions: {},
        onWebViewCreated: (InAppWebViewController controller) {
          webViewController = controller;
        },
        onLoadStart: (InAppWebViewController controller, String url) {
          print("started -------------- $url");
          this.webUrl = url;
        },
        onProgressChanged: (InAppWebViewController controller, int progress) {
          double prog = progress / 100;
          print('prog --------- $prog');
        });

    return Container(
      width: webRect.width,
      height: webRect.height,
      child: webWidget,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cctv_news/components/HomeNewsCell.dart';
import 'package:cctv_news/models/NewsModel.dart';
import 'package:dio/dio.dart';

class HomeNewsListPage extends StatefulWidget {
  @override
  HomeNewsListPageState createState() => HomeNewsListPageState();
}

class HomeNewsListPageState extends State<HomeNewsListPage> {
  List<NewsModel> dataSource = [];

  void requestDataAndReload() async {
    var models = await requestData();
    print('zhoukang===>$models');
    setState(() {
      dataSource = models;
    });
  }

  @override
  void initState() {
    super.initState();
    requestDataAndReload();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻列表'),
      ),
      body: ListView.builder(
        itemCount: dataSource.length,
        itemBuilder: (context, index) {
          return HomeNewsCell(
            model: dataSource[index],
          );
        },
      ),
    );
  }
}

Future<List<NewsModel>> requestData() async {
  final String urlString =
      'http://api.cportal.cctv.com/api/rest/navListInfo/getHandDataListInfoNew?id=Nav-9Nwml0dIB6wAxgd9EfZA160510&toutuNum=5&version=1&p=5&n=20';
  Dio dio = Dio();
  Response response = await dio.get(urlString);
  Map dataDict = response.data as Map;
  var rawDatas = (dataDict['itemList'] as List);
  var models = rawDatas.map((map) {
    map = map as Map;
    NewsModel model = NewsModel.fromDict(map);
    return model;
  }).toList();
  return models;
}

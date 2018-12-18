import 'package:flutter/material.dart';
import 'package:cctv_news/components/HomeNewsCell.dart';

class HomeNewsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('新闻列表'),
      ),
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, inedx){
          return HomeNewsCell();
        },
      ),
    );
  }
}

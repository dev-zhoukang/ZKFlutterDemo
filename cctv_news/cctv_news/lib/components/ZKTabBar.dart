import 'package:flutter/material.dart';
import 'package:cctv_news/configs/GlobalConfig.dart';

class ZKTabBar extends StatelessWidget {
  final TabController tabController;
  final List<ZKTab> tabs;

  ZKTabBar({
    @required this.tabController,
    @required this.tabs,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xfff8f8f8),
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.black12,
            height: 0.5,
          ),
          Container(
            height: 49.5,
            child: TabBar(
              labelColor: GlobalConfig.colorConfig.themeColor,
              unselectedLabelColor: GlobalConfig.colorConfig.titleColor,
              indicatorColor: Colors.transparent,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: tabs,
              controller: tabController,
            ),
          ),
        ],
      ),
    );
  }
}

class ZKTab extends StatelessWidget {
  final String title;
  final IconData icon;
  ZKTab({
    @required this.title,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon),
          Text(
            this.title,
            style: TextStyle(
                fontSize: 11.5, height: 0.9, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}

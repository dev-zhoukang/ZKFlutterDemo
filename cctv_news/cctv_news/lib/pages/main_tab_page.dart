import 'package:flutter/material.dart';
import 'package:cctv_news/components/zk_tabbar.dart';
import 'package:cctv_news/pages/home_newslist_page.dart';

class MainTabPage extends StatefulWidget {
  @override
  _MainTabPageState createState() => _MainTabPageState();
}

class _MainTabPageState extends State<MainTabPage>
    with SingleTickerProviderStateMixin {
  final List<ZKTab> _tabs = <ZKTab>[
    ZKTab(
      title: '首页',
      icon: Icons.home,
    ),
    ZKTab(
      title: '时间链',
      icon: Icons.timelapse,
    ),
    ZKTab(
      title: '电视+',
      icon: Icons.text_rotate_vertical,
    ),
    ZKTab(
      title: '发现',
      icon: Icons.directions_subway,
    ),
    ZKTab(
      title: '我的',
      icon: Icons.more,
    ),
  ];

  List<Widget> get _pages {
    return _tabs.map((_) => HomeNewsListPage()).toList();
  }

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ZKTabBar(
        tabController: _tabController,
        tabs: _tabs,
      ),
      body: TabBarView(
        controller: _tabController,
        children: _pages,
      ),
    );
  }
}

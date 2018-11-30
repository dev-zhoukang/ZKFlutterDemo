import 'package:flutter/material.dart';

import './views/first_page.dart';
import './views/second_page.dart';
import './views/third_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController mainTabController;

  @override
  void initState() {
      // TODO: implement initState
      super.initState();
      mainTabController = TabController(length: 3, vsync: this);
    }

  @override
  void dispose() {
    mainTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: mainTabController,
        children: <Widget>[
          FirstPage(),
          SecondPage(),
          ThirdPage(),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.purple,
        child: TabBar(
          controller: mainTabController,
          tabs: <Widget>[
            Tab(text: 'List', icon: Icon(Icons.home)),
            Tab(text: 'Noti', icon: Icon(Icons.message)),
            Tab(text: 'Mine', icon: Icon(Icons.cloud)),
          ],
        ),
      ),
    );
  }
}

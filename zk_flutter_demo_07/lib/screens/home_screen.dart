import 'package:flutter/material.dart';
import '../models/app_state.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => new HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  AppState appState;

  Widget get _pageToDisplay {
    if (appState.isLoading) {
      return _loadingView;
    } else {
      return _homeView;
    }
  }

  Widget get _loadingView {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget get _homeView {
    return Center(
      // child: Text(appState.user.displayName),
      child: Text('test'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Suite'),
      ),
      body: new Center(
        child: new Text(appState.user.displayName),
      ),
    );
  }
}

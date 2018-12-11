import 'package:flutter/material.dart';
import '../models/app_state.dart';
import '../app_state_container.dart';

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

    var container = AppStateContainer.of(context);
    appState = container.state;
    Widget body = _pageToDisplay;

    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FlutterDemo'),
      ),
      body: new Center(
        child: body,
      ),
    );
  }
}

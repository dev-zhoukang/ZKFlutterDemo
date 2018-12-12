import 'package:flutter/material.dart';
import './pages/home_page.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import './models/app_state.dart';
import './reducers/app_reducer.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  final store = Store<AppState>(
    appReducer,
    initialState: AppState(),
    middleware: [],
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        title: 'ZKDemo',
        home: HomePage('ZKDemo'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:zk_flutter_demo_10/middleware.dart';
import 'package:zk_flutter_demo_10/reducers.dart';
import 'package:zk_flutter_demo_10/state.dart';
import 'package:zk_flutter_demo_10/to_do_list_page.dart';

void main() => runApp(ToDoListApp());

class ToDoListApp extends StatelessWidget {
  final Store<AppState> store = Store<AppState>(
    appReducer,
    initialState: AppState.initial(),
    middleware: createStoreMiddleware(),
  );

  @override
  Widget build(BuildContext context) => StoreProvider(
    store: this.store,
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ToDoListPage(),
    ),
  );
}

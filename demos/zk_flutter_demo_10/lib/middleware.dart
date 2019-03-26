import 'dart:async';

import 'package:redux/redux.dart';
import 'package:zk_flutter_demo_10/actions.dart';
import 'package:zk_flutter_demo_10/state.dart';

List<Middleware<AppState>> createStoreMiddleware() => [
      TypedMiddleware<AppState, SaveListAction>(_saveList),
    ];

Future _saveList(
    Store<AppState> store, SaveListAction action, NextDispatcher next) async {
  await Future.sync(() => Duration(seconds: 3));
  next(action);
}

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../models/app_state.dart';
import '../actions/auth_actions.dart';

List<Middleware<AppState>> createAuthMiddleware() {
  final loginMiddleware = _createLoginMiddleware();
  final logoutMiddleware = _createLogoutMiddleware();
  return <Middleware<AppState>>[
    TypedMiddleware<AppState, Login>(loginMiddleware),
    TypedMiddleware<AppState, Logout>(logoutMiddleware),
  ];
}

Middleware<AppState> _createLoginMiddleware() {
  return (Store store, action, NextDispatcher next) async {
    next(action);
  };
}

Middleware<AppState> _createLogoutMiddleware() {
  return (Store store, action, NextDispatcher next) {
    next(action);
  };
}

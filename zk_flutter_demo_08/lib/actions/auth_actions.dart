import 'package:flutter/foundation.dart';
import '../models/user.dart';

class Login {}

class Logout {}

class LoginSuccessful {
  final User user;
  LoginSuccessful({
    @required this.user,
  });
  @override
  String toString() {
    return 'LoginSuccessful{user: $user}';
  }
}

class LoginFail {
  final dynamic error;
  LoginFail(this.error);
  @override
  String toString() {
    return 'LoginFail{error: $error}';
  }
}

class LogoutSuccessful {
  LogoutSuccessful();
  @override
  String toString() {
    return 'LogoutSuccessful{user: null}';
  }
}

import './app.dart';
import 'package:flutter/material.dart';
import './app_state_container.dart';

void main() {
  runApp(AppStateContainer(
    child: new AppRootWidget(),
  ));
}

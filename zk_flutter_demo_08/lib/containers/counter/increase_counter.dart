import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import '../../models/app_state.dart';
import '../../actions/counter_actions.dart';

class IncreseCountButton extends StatelessWidget {
  IncreseCountButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector(
      converter: (Store<AppState> store) {
        return () {
          store.dispatch(IncrementCountAction());
        };
      },
      builder: (BuildContext context, VoidCallback increse) {
        return FloatingActionButton(
          onPressed: increse,
          child: Icon(Icons.add),
        );
      },
    );
  }
}

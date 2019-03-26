import 'package:zk_flutter_demo_10/to_do_model.dart';

class AppState {
  final List<ToDoModel> todos;
  final ListState listState;

  AppState(this.todos, this.listState);

  factory AppState.initial() =>
      AppState(List.unmodifiable([]), ListState.listOnly);
}

enum ListState {
  listOnly,
  listWithNewItem,
}

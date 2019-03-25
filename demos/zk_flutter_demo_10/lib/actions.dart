import 'package:zk_flutter_demo_10/to_do_model.dart';

class RemoveItemAction {
  final ToDoModel model;
  RemoveItemAction(this.model);
}

class AddItemAction {
  final ToDoModel model;
  AddItemAction(this.model);
}

class DisplayListOnlyAction {}

class DisplayListWithNewItemAction {}

class SaveListAction {}

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

import 'package:zk_flutter_demo_10/to_do_model.dart';
import 'package:zk_flutter_demo_10/actions.dart';
import 'package:zk_flutter_demo_10/state.dart';

class ToDoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
    );
  }
}

class _ViewModel {
  final String pageTitle;
  final List<_BaseItemViewModel> items;
  final Function() onAddItem;
  final String newItemToolTip;
  final IconData newItemIcon;

  _ViewModel({this.pageTitle, this.items, this.onAddItem, this.newItemToolTip, this.newItemIcon});

  factory _ViewModel.create(Store<AppState> store) {
    List<_BaseItemViewModel> items = store.state.todos.map((ToDoModel item) => _ToDoItemViewModel(title: item.title, onDeleteItem: () => {
      store.dispatch(RemoveItemAction(item));
      store.dispatch(SaveListAction());
    }, deleteItemToolTip: 'Delete', deleteItemIcon: Icons.delete) as _BaseItemViewModel).toList();
    if (store.state.listState == ListState.listThisNewItem) {
      items.add(_EmptyItemViewModel());
    }
  }
}

abstract class _BaseItemViewModel {}

@immutable 
class _EmptyItemViewModel extends _BaseItemViewModel {
  final String hint;
  final Function(String) onCreateItem;
  final String createItemToolTip;

  _EmptyItemViewModel({this.hint, this.onCreateItem, this.createItemToolTip});
}

@immutable
class _ToDoItemViewModel extends _BaseItemViewModel {
  final String title;
  final Function() onDeleteItem;
  final String deleteItemToolTip;
  final IconData deleteItemIcon;

  _ToDoItemViewModel({this.title, this.onDeleteItem, this.deleteItemToolTip, this.deleteItemIcon});
}
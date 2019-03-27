import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:meta/meta.dart';

import 'package:zk_flutter_demo_10/to_do_model.dart';
import 'package:zk_flutter_demo_10/actions.dart';
import 'package:zk_flutter_demo_10/state.dart';

abstract class _BaseItemViewModel {}

@immutable
class _EmptyItemViewModel extends _BaseItemViewModel {
  final String hint;
  final Function(String) onCreateItem;
  final String createItemToolTip;

  _EmptyItemViewModel(this.hint, this.onCreateItem, this.createItemToolTip);
}

@immutable
class _ToDoItemViewModel extends _BaseItemViewModel {
  final String title;
  final Function() onDeleteItem;
  final String deleteItemToolTip;
  final IconData deleteItemIcon;

  _ToDoItemViewModel(
    this.title,
    this.onDeleteItem,
    this.deleteItemToolTip,
    this.deleteItemIcon,
  );
}

class _ViewModel {
  final String pageTitle;
  final List<_BaseItemViewModel> items;
  final Function() onAddItem;
  final String newItemToolTip;
  final IconData newItemIcon;

  _ViewModel(
    this.pageTitle,
    this.items,
    this.onAddItem,
    this.newItemToolTip,
    this.newItemIcon,
  );

  factory _ViewModel.create(Store<AppState> store) {
    List<_BaseItemViewModel> items = store.state.todos
        .map((ToDoModel item) => _ToDoItemViewModel(item.title, () {
              store.dispatch(RemoveItemAction(item));
              store.dispatch(SaveListAction());
            }, 'Delete', Icons.delete) as _BaseItemViewModel)
        .toList();

    if (store.state.listState == ListState.listWithNewItem) {
      items.add(_EmptyItemViewModel('Type the next task here', (String title) {
        store.dispatch(DisplayListOnlyAction());
        store.dispatch(AddItemAction(ToDoModel(title)));
        store.dispatch(SaveListAction());
      }, 'Add'));
    }

    return _ViewModel(
        'To Do',
        items,
        () => store.dispatch(DisplayListWithNewItemAction()),
        'Add new to-do item',
        Icons.add);
  }
}

class ToDoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => StoreConnector<AppState, _ViewModel>(
        converter: (Store<AppState> store) => _ViewModel.create(store),
        builder: (BuildContext context, _ViewModel viewModel) => Scaffold(
              appBar: AppBar(
                title: Text(viewModel.pageTitle),
              ),
              body: ListView(
                  children: viewModel.items
                      .map((_BaseItemViewModel item) => _createWidget(item))
                      .toList()),
              floatingActionButton: FloatingActionButton(
                onPressed: viewModel.onAddItem,
                tooltip: viewModel.newItemToolTip,
                child: Icon(viewModel.newItemIcon),
              ),
            ),
      );

  Widget _createWidget(_BaseItemViewModel item) {
    if (item is _EmptyItemViewModel) {
      print('111111');
      return _createEmptyItemWidget(item);
    } else {
      print('22222');
      return _createToDoItemWidget(item);
    }
  }

  Widget _createEmptyItemWidget(_EmptyItemViewModel item) => Column(
        children: <Widget>[
          TextField(
            onSubmitted: item.onCreateItem,
            autofocus: true,
            decoration: InputDecoration(
              hintText: item.createItemToolTip,
            ),
          )
        ],
      );

  Widget _createToDoItemWidget(_ToDoItemViewModel item) => Row(
        children: <Widget>[
          Text(item.title),
          FlatButton(
            onPressed: item.onDeleteItem,
            child: Icon(item.deleteItemIcon,
                semanticLabel: item.deleteItemToolTip),
          ),
        ],
      );
}

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

  _EmptyItemViewModel({this.hint, this.onCreateItem, this.createItemToolTip});
}

@immutable
class _ToDoItemViewModel extends _BaseItemViewModel {
  final String title;
  final Function() onDeleteItem;
  final String deleteItemToolTip;
  final IconData deleteItemIcon;

  _ToDoItemViewModel(
      {this.title,
      this.onDeleteItem,
      this.deleteItemToolTip,
      this.deleteItemIcon});
}

class _ViewModel {
  final String pageTitle;
  final List<_BaseItemViewModel> items;
  final Function() onAddItem;
  final String newItemToolTip;
  final IconData newItemIcon;

  _ViewModel(
      {this.pageTitle,
      this.items,
      this.onAddItem,
      this.newItemToolTip,
      this.newItemIcon});

  factory _ViewModel.create(Store<AppState> store) {
    List<_BaseItemViewModel> items = store.state.todos
        .map((ToDoModel item) => _ToDoItemViewModel(
            title: item.title,
            onDeleteItem: () {
              store.dispatch(RemoveItemAction(item));
              store.dispatch(SaveListAction());
            },
            deleteItemToolTip: 'Delete',
            deleteItemIcon: Icons.delete))
        .toList();
    if (store.state.listState == ListState.listThisNewItem) {
      items.add(_EmptyItemViewModel(
          hint: 'Type the next task here',
          onCreateItem: (String title) {
            store.dispatch(DisplayListOnlyAction());
            store.dispatch(AddItemAction(ToDoModel(title)));
            store.dispatch(SaveListAction());
          },
          createItemToolTip: 'Add'));
    }

    return _ViewModel(
        pageTitle: 'ToDo',
        items: items,
        onAddItem: () => store.dispatch(DisplayListWithNewItemAction()),
        newItemToolTip: 'Add new to do item',
        newItemIcon: Icons.add);
  }
}

class ToDoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: (Store<AppState> store) => _ViewModel.create(store),
      builder: (BuildContext context, _ViewModel viewModel) => Scaffold(
            appBar: AppBar(
              title: Text(viewModel.pageTitle),
            ),
            body: ListView(
              children: viewModel.items
                  .map((_BaseItemViewModel item) => _createWidget(item)),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: viewModel.onAddItem,
              tooltip: viewModel.newItemToolTip,
              child: Icon(viewModel.newItemIcon),
            ),
          ),
    );
  }

  Widget _createWidget(_BaseItemViewModel item) {
    if (item is _EmptyItemViewModel) {
      return _createEmptyItemWidget(item);
    } else {
      return _createToDoItemWidget(item);
    }
  }

  Widget _createEmptyItemWidget(_EmptyItemViewModel item) => Column(
        children: <Widget>[
          TextField(
            onSubmitted: item.onCreateItem,
            autofocus: true,
            decoration: InputDecoration(hintText: item.createItemToolTip),
          )
        ],
      );

  Widget _createToDoItemWidget(_ToDoItemViewModel item) => Row(
        children: <Widget>[
          Text(item.title),
          FlatButton(
            onPressed: item.onDeleteItem,
            child: Icon(
              item.deleteItemIcon,
              semanticLabel: item.deleteItemToolTip,
            ),
          ),
        ],
      );
}

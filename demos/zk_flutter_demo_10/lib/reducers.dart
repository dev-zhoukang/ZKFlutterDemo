import 'package:redux/redux.dart';
import 'package:zk_flutter_demo_10/state.dart';
import 'package:zk_flutter_demo_10/to_do_model.dart';
import 'package:zk_flutter_demo_10/actions.dart';

AppState appReducer(AppState state, action) => AppState(toDoListReducer(state.todos, action), listStateReducer(state.listState, action));

final Reducer<List<ToDoModel>> toDoListReducer = combineReducers([
  TypedReducer<List<ToDoModel>, AddItemAction>(_addItem),
  TypedReducer<List<ToDoModel>, RemoveItemAction>(_removeItem),
]);

List<ToDoModel> _removeItem(List<ToDoModel> toDos, RemoveItemAction action) => List.unmodifiable(List.from(toDos)..remove(action.model));

List<ToDoModel> _addItem(List<ToDoModel> toDos, AddItemAction action) => List.unmodifiable(List.from(toDos)..add(action.model));

final Reducer<ListState> listStateReducer = combineReducers<ListState>([
  TypedReducer<ListState, DisplayListOnlyAction>(_displayListOnly),
  TypedReducer<ListState, DisplayListWithNewItemAction>(_displayListWithNewItem),
]);

ListState _displayListOnly(ListState listState, DisplayListOnlyAction action) => ListState.listOnly;

ListState _displayListWithNewItem(ListState listState, DisplayListWithNewItemAction action) => ListState.listWithNewItem;

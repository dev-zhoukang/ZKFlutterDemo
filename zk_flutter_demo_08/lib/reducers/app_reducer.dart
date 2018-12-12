import '../models/app_state.dart';

AppState appReducer(AppState state, action) {
  return AppState(
    isLoading: false,
    count: countReducer(state.count, action),
  );
}
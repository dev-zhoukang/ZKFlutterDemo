import '../models/user.dart';

class AppState {
  bool isLoading;
  User user;

  AppState({
    this.isLoading = false,
    this.user,
  });

  factory AppState.loading() => AppState(isLoading: true);

  @override
    String toString() {
      return 'AppState{isLoading: $isLoading, user: ${user?.nickName ?? 'null'}}';
    }
}
class AppState {
  bool isLoading;
  AppState({
    this.isLoading = false,
    this.user,
  });

  factory AppState.loading() => AppState(isLoading: true);

  @override
    String toString() {
      return 'AppState{isLoading: $isLoading, user: ${user?.displayName ?? 'null'}}';
    }
}
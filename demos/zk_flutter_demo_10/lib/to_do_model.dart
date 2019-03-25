class ToDoModel {
  final String title;
  ToDoModel(this.title);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ToDoModel &&
          runtimeType == other.runtimeType &&
          title == other.title);

  @override
  int get hashCode => title.hashCode;
}

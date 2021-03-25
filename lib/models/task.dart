class Task {
  String taskTitle;
  bool isChecked;
  int priority;

  Task({this.taskTitle, this.isChecked = false, this.priority = 0});

  void toggleSelection() {
    isChecked = !isChecked;
  }
}

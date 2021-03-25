class Task {
  String taskTitle;
  bool isChecked;

  Task({this.taskTitle, this.isChecked = false});

  void toggleSelection() {
    isChecked = !isChecked;
  }
}

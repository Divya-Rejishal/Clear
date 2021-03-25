import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:to_do_app/models/task.dart';

class TaskData extends ChangeNotifier {
  String newTaskAdded;
  bool isRefreshed = false;
  List<Task> _tasks = [
    Task(taskTitle: 'Swipe to the right to complete!', priority: 0),
    Task(taskTitle: 'Swipe to the left to delete', priority: 1),
    Task(taskTitle: 'Tap and hold to pick me up', priority: 2),
    Task(taskTitle: 'Pull down to create an item', priority: 3),
    Task(taskTitle: 'Try shaking to undo', priority: 4),
    Task(taskTitle: 'Try pinching two rows apart', priority: 5),
    Task(taskTitle: 'Try pinching vertically shut', priority: 5),
    Task(taskTitle: 'Pull up to clear', priority: 5),
  ];

  List<Task> get tasks {
    return _tasks;
  }

  int get tasksCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    _tasks.add(
      Task(
        taskTitle: newTaskTitle,
      ),
    );
    notifyListeners();
  }

  void insertTask(int index, Task task) {
    _tasks.insert(index, task);
    isRefreshed = false;
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleSelection();
    _tasks.insert(tasks.length, task);
    _tasks.remove(task);
    notifyListeners();
  }

  void swapTask(int oldIndex, int newIndex) {
    var temp = _tasks.removeAt(oldIndex);
    print('oldIndex-> $oldIndex  newIndex -> $newIndex  temp -> $temp');
    temp.toggleSelection();
    _tasks.insert(newIndex, temp);
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void refreshCalled() {
    isRefreshed = true;
    notifyListeners();
  }
}

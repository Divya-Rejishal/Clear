import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task.dart';
import 'package:to_do_app/models/task_data.dart';
import 'package:to_do_app/widgets/task_list_tile.dart';
import 'dart:ui';

class TaskList extends StatelessWidget {
  final refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return RefreshIndicator(
        backgroundColor: Colors.black,
        color: Colors.black,
        key: refreshKey,
        onRefresh: () async {
          taskData.refreshCalled();
        },
        child: ReorderableListViewWidget(
          taskData: taskData,
        ),
      );
    });
  }
}

class ReorderableListViewWidget extends StatelessWidget {
  final TaskData taskData;
  ReorderableListViewWidget({this.taskData});
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      children: [
        for (final task in taskData.tasks)
          Dismissible(
            key: UniqueKey(),
            child: TaskListTile(
              title: task.taskTitle,
              isChecked: task.isChecked,
              tileColor: task.isChecked ? Colors.black : Colors.deepOrange,
              onTap: () {
                taskData.updateTask(task);
              },
            ),
            background: SlideRightBackground(),
            secondaryBackground: SlideLeftBackground(),
            onDismissed: (direction) {
              if (direction == DismissDirection.startToEnd) {
                taskData.updateTask(task);
              } else {
                taskData.deleteTask(task);
              }
            },
          ),
      ],
      onReorder: (oldIndex, newIndex) {
        taskData.swapTask(oldIndex, newIndex - 1);
      },
    );
  }
}

class SlideLeftBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Icon(
                Icons.close,
                color: Colors.red,
                size: 40.0,
              ),
            ),
          ],
        ),
        alignment: Alignment.centerRight,
      ),
    );
  }
}

class SlideRightBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
          child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 40.0,
            ),
          ),
        ],
      )),
      alignment: Alignment.centerLeft,
    );
  }
}

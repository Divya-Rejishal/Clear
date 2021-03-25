import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/task.dart';
import 'package:to_do_app/models/task_data.dart';

class TaskTextfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: Provider.of<TaskData>(context).isRefreshed ? true : false,
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Pull Down to create an item.',
            filled: true,
            fillColor: Colors.deepOrange,
            hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold)),
        onSubmitted: (value) {
          Provider.of<TaskData>(context, listen: false)
              .insertTask(0, Task(taskTitle: value));
        },
        style: TextStyle(
            color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}

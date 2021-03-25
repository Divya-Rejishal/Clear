import 'package:flutter/material.dart';
import 'package:to_do_app/models/task.dart';
import 'package:to_do_app/widgets/task_list.dart';
import 'package:to_do_app/widgets/task_textfield.dart';

class PersonalListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Personal List',
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TaskTextfield(),
            Expanded(
              child: TaskList(),
            ),
          ],
        ),
      ),
    );
  }
}

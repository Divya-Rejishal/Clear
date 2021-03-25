import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function onTap;
  final Function onLongPress;
  final Color tileColor;
  TaskListTile(
      {this.isChecked,
      this.title,
      this.tileColor,
      this.onLongPress,
      this.onTap});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: tileColor,
      onTap: onTap,
      title: Text(title,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 30.0,
          )),
    );
  }
}

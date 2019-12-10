import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function onLongPress;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      onLongPress: onLongPress,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      title: Text(
        this.taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

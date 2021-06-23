import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxState;
  final Function deleteTaskTile;
  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxState,
      this.deleteTaskTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxState,
      ),
      onLongPress: deleteTaskTile,
    );
  }
}

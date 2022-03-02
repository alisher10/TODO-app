import 'package:flutter/material.dart';
//TODO: To delete completed to-do tasks
class TaskTile extends StatelessWidget {
  late final bool ?isChecked;
  late final String taskTile;
  late final Function(bool?) checkboxCallback;
  late final Function() longPressCallback;//TODO 1: Creating a f-n like checkBoxCallback

  TaskTile({required this.isChecked, required this.taskTile, required this.checkboxCallback, required this.longPressCallback});//TODO 2: Initialize it inside a constructor

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,//TODO 3: Using a property onLongPress and passing longPressCallback f-n here
      title: Text(
        taskTile,
        style: TextStyle(
          decoration: isChecked! ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing:Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}




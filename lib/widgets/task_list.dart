import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTile;
  TaskTile({required this.isChecked, required this.taskTile});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTile,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: isChecked,
        onChanged: null,
        // onChanged: CheckboxChange,
      ),
    );
  }
}

//  (bool? newValue) {
//  setState(() {
//  isChecked = newValue!;
//  });
//  }

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskCallback;

  AddTaskScreen(this.addtaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, color: Colors.teal, fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            // ignore: sort_child_properties_last
            child: const Text("Add"),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400],
              // ignore: deprecated_member_use
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

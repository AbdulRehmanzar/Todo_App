import 'package:flutter/material.dart ';
import 'package:app/models/task.dart';
import 'package:app/widgets/task_list.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'My Todo'),
    Task(name: 'by a gift'),
    Task(name: 'repair the car'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksList(isChecked: isChecked, taskTile: tasks[index].name);
      },
    );
    // return ListView(
    // children: [
    // TaskTile(
    // taskTile: tasks[0].name,
    // isChecked: tasks[0].isDone,
    // ),
    // TaskTile(
    // taskTile: tasks[1].name,
    // isChecked: tasks[1].isDone,
    // ),
    // TaskTile(
    // taskTile: tasks[2].name,
    // isChecked: tasks[2].isDone,
    // ),
    // ],
    // );
  }
}

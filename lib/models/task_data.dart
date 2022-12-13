import 'package:app/models/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
  Task(name: 'My Todo Add your daily schedule on here !'),
  // Task(name: 'by a gift'),
  // Task(name: 'repair the car'),
];

void addTask(String newTaskTitle) {
  tasks.add(Task(name: newTaskTitle));
  notifyListeners();
}

void updateTask(Task task) {
  task.doneChange();
  notifyListeners();
}
void deleteTask(Task task){
  tasks.remove(task);
  notifyListeners();
}

}
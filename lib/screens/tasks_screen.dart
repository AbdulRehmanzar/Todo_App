import 'package:app/models/task.dart';
import 'package:app/models/task_data.dart';
import 'package:app/screens/add_task_screen.dart';
import 'package:app/widgets/tasks_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen((newTaskTile) {
                  // setState(() {
                  //   tasks.add(Task(name: newTaskTile));
                  //   Navigator.pop(context);
                  // });
                }),
              ),
            ),
          );
        },
        // ignore: sort_child_properties_last
        child: const Icon(
          Icons.add_box_outlined,
          color: Colors.white,
        ),
        backgroundColor: Colors.teal[800],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.teal[800],
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.edit_note_sharp,
                color: Colors.transparent,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.delete_sharp,
                color: Colors.transparent,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.teal[500],
      body: Container(
        padding:
            const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: const [
              Icon(
                Icons.playlist_add_check,
                size: 40,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Text(
                "Daily Schedule",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,),
              ),
            ]),
            Text(
              '${Provider.of<TaskData>(context).tasks.length} Tasks',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 550,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: TasksList(),
            ),
          ],
        ),
      ),
    );
  }
}

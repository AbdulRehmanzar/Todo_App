import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height:30),
          TextButton(
            onPressed: () {},
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

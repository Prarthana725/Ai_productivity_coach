import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Tasks"),
      ),

      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [

          ListTile(
            title: Text("Review weekly goals"),
            subtitle: Text("10:00 AM - 11:00 AM"),
          ),

          ListTile(
            title: Text("Design system update"),
            subtitle: Text("Focus Session"),
          ),

          ListTile(
            title: Text("Client feedback call"),
            subtitle: Text("2:30 PM"),
          ),

        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
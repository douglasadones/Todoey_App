import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy Eggs'),
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          taskTitle: tasks[0].name,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          taskTitle: tasks[1].name,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          taskTitle: tasks[2].name,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}

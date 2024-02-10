import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final Task task = taskData.tasks[index];
            return TaskTile(
              onLongPress: () {
                taskData.removeTask(task);
              },
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                Provider.of<TaskData>(context, listen: false).updateTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}

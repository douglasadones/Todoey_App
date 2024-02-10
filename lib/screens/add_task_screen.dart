import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/consts.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';

    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 50.0,
        ),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
            ),
            TextField(
              textCapitalization: TextCapitalization.sentences,
              autofocus: true,
              decoration: kTextFieldDecoration,
              onChanged: (value) {
                newTaskTitle = value;
              },
              onSubmitted: (newTask) {
                if (newTaskTitle != '') {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                }
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: kElevatedButtomStyle,
              onPressed: () {
                if (newTaskTitle != '') {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                }
                Navigator.pop(context);
              },
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

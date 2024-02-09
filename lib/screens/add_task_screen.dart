import 'package:flutter/material.dart';
import 'package:todoey/consts.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  const AddTaskScreen({
    super.key,
    required this.addTaskCallBack,
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
              autofocus: true,
              decoration: kTextFieldDecoration,
              onChanged: (value) {
                newTaskTitle = value;
              },
              onSubmitted: (value) {
                if (newTaskTitle != '') {
                  addTaskCallBack(newTaskTitle);
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
                  addTaskCallBack(newTaskTitle);
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

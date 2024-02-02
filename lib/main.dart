import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: Colors.lightBlueAccent,
          textSelectionTheme: const TextSelectionThemeData(
              cursorColor: Colors.lightBlueAccent,
              selectionHandleColor: Colors.lightBlueAccent)),
      home: const TasksScreen(),
    );
  }
}

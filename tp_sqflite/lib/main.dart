import 'package:flutter/material.dart';
import 'package:tp_sqflite/screens/todo_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:TodoList()
    );
  }
}

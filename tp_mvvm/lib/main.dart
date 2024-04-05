import 'package:flutter/material.dart';
import 'package:tp_mvvm/screens/todo_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: TodoPage(),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tp_todos/models/todo.dart';



class TodoDetail extends StatelessWidget {

static const route = "/detail";

final Todo todo;

const TodoDetail({super.key,required this.todo });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoDetail'),
      ),
      body: Text(todo.title),
    );
  }
}
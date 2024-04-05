import 'package:flutter/material.dart';
import 'package:tp_mvvm/components/change_todo_title.dart';
import 'package:tp_mvvm/components/show_todo_title.dart';
import 'package:provider/provider.dart';
import 'package:tp_mvvm/models/todo.dart';
import 'package:tp_mvvm/models/todo_view_model.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoViewModel>(
      create: (context){
        Todo t = Todo("Faire du Flutter");
        TodoViewModel vm = TodoViewModel(t);
        return vm;
      },
      child: const Column(
        children: [
          ShowTodoTitle(),
          ChangeTodoTitle(),
        ],
      ),
    );
  }
}

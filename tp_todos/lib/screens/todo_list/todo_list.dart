import 'package:flutter/material.dart';
import 'package:tp_todos/models/todo.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_todos/screens/todo_detail/todo_detail.dart';
import 'package:tp_todos/screens/todo_form/todo_form.dart';
import 'package:tp_todos/services/todo_service.dart';

class TodoList extends StatefulWidget {
  static const String route = "/";

  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TodoList'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await context.push(TodoForm.route);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return Future(() => setState(() {}));
        },
        child: FutureBuilder<List<Todo>>(
          future: TodoService.loadData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      // GoRouter.of(context).push(TodoDetail.route);
                      context.push(TodoDetail.route,
                          extra: snapshot.data?[index]);
                    },
                    // title: Text(snapshot.data![index].title),
                    title: Text(snapshot.data?[index].title ?? ""),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text('Errors ${snapshot.error}');
            } else {
              return const Text('No Values');
            }
          },
        ),
      ),
    );
  }
}

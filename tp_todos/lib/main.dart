import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:tp_todos/models/todo.dart';
import 'package:tp_todos/screens/todo_detail/todo_detail.dart';
import 'package:tp_todos/screens/todo_form/todo_form.dart';
import 'package:tp_todos/screens/todo_list/todo_list.dart';
import 'package:go_router/go_router.dart';

void main() async {
  await dotenv.load(fileName: ".env");

  runApp(const MainApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(path: TodoList.route, builder: (context, state) => const TodoList()),
  GoRoute(
      path: TodoDetail.route,
      builder: (context, state) => TodoDetail(todo: state.extra as Todo)),
  GoRoute(path: TodoForm.route, builder: (context, state) => const TodoForm()),
  // GoRoute(),
]);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _router);
  }
}

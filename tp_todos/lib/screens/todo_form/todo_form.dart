import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tp_todos/models/todo.dart';
import 'package:tp_todos/services/todo_service.dart';

class TodoForm extends StatefulWidget {
  static const String route = "/add";

  const TodoForm({super.key});

  @override
  State<TodoForm> createState() => _TodoFormState();
}

class _TodoFormState extends State<TodoForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              // decoration: const InputDecoration(
              //   icon: Icon(Icons.person),
              //   hintText: 'What do people call you?',
              //   labelText: 'Name *',
              // ),
              // The validator receives the text that the user has entered.
              controller: titleController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Merci de saisir le titre';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () async {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  Todo todo = Todo(0, titleController.text, false);
                  var response = await TodoService.save(todo);
                  if (response.statusCode == 201 && context.mounted) {
                    context.pop();
                  }
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(content: Text('Processing Data')),
                  // );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'dart:convert';

class Todo {
  final int id;
  final String title;
  final bool completed;

  Todo(this.id, this.title, this.completed);
  Todo.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        title = json["title"],
        completed = json["completed"];

  String toJson() {
    return jsonEncode({
      "title": title,
      "completed": completed,
    });
  }
}

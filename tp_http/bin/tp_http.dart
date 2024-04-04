import 'dart:convert';

import 'package:tp_http/tp_http.dart' as tp_http;
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  print('Hello world: ${tp_http.calculate()}!');
  
  
  var url = Uri.http('localhost:3000', 'todos');
  var response = await http.get(url);
  // print('Response status: ${response.statusCode}');
  // print('Response body: ${response.body}');
  var todos = jsonDecode(response.body);

  for(var todo in todos){
    print(todo['title']);
  }

  // print(await http.read(Uri.https('example.com', 'foobar.txt')));  
  print(response.body.runtimeType);
}

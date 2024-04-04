Map getTodo(int id) {
  Map todo = {"id": id, "title": "Todo $id", "completed": false};
  return todo;
}

Future<Map> getTodoAsync(int id) {
  Map todo = {"id": id, "title": "Todo $id", "completed": false};
  return Future<Map>.delayed(Duration(seconds: 1), () => todo);
}

void main_moche(List<String> args) {
  // Map todo = getTodo(1);
  Future<Map> fTodo = getTodoAsync(1);

  // fTodo.then((todo) => print(todo));
  fTodo.then((todo) {
    print(todo);
    getTodoAsync(todo['id'] + 1).then((todo) {
      print(todo);
      getTodoAsync(todo['id'] + 1).then((todo) {
        print(todo);
        getTodoAsync(todo['id'] + 1).then((todo) {
          print(todo);
          getTodoAsync(todo['id'] + 1).then((todo) {
            print(todo);
          });
        });
      });
    });
  });
}

void main(List<String> args) async {
  Future<Map> fTodo01 = getTodoAsync(1);
  Future<Map> fTodo02 = getTodoAsync(2);
  Future<Map> fTodo03 = getTodoAsync(3);

  List<Future<Map>> l = [fTodo01,fTodo02,fTodo03];

  List<Map> todos = await Future.wait(l);

  print(todos);



}


void main01(List<String> args) async {
  Map todo01 = await getTodoAsync(1);
  print(todo01);
  Map todo02 = await getTodoAsync(2);
  print(todo02);
  Map todo03 = await getTodoAsync(3);
  print(todo03);

}
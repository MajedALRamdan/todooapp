import 'package:flutter/material.dart';

import '../models/todo.dart';

class toDos extends ChangeNotifier {
  var todos = [
    Todo(id: 1, title: "first todo"),
    Todo(id: 2, title: "2ND todo"),
    Todo(id: 3, title: "3RD todo"),
    Todo(id: 4, title: "4TH todo"),
  ];
  void addTodo({required String title}) {
    todos.add(Todo(id: todos.length, title: title));
    notifyListeners();
  }

  void toggleTaskStatus({required int id}) {
    var todo = todos.firstWhere((element) => element.id == id);
    todo.done = !todo.done;
    notifyListeners();
  }
}

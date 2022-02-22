import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos/Model/todo.dart';

class TodoData {
  TodoData();

  Future<List<Todo>> todoDataList() async {
    var response = await http
        .get(Uri.parse('https://d4f8-185-114-120-159.eu.ngrok.io/todos'));

    var todos = jsonDecode(response.body);
    List<Todo> todoList = [];
    for (int index = 0; index < todos.length; index++) {
      todoList.add(Todo(
        todos[index]['due_date'],
        todos[index]['id'],
        todos[index]['name'],
        todos[index]['owner_image'],
        todos[index]['owner_name'],
        todos[index]['parent'],
        todos[index]['project_id'],
        todos[index]['start_date'],
        todos[index]['status'],
      ));
    }
   

    return todoList;
  }
}

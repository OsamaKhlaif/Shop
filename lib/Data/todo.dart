import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:realm/realm.dart';
import 'package:todos/Model/todo.dart';
import 'package:todos/Schema/todo.dart';

class TodoData {
  //Constructor
  TodoData();

  Future<List<Todo>> todoDataList() async {
    List<Todo> todoList = []; //Store in it Todos data.

    var config = Configuration([TodoSchema.schema]);
    var realm = Realm(config);

    //Read all data stored in object TodoSchema.
    var todo = realm.all<TodoSchema>();

    for (int index = 0; index < todo.length; index++) {
      todoList.add(Todo(
          todo[index].due_date,
          todo[index].id,
          todo[index].name,
          todo[index].owner_image,
          todo[index].owner_name,
          todo[index].parent,
          todo[index].project_id,
          todo[index].start_date,
          todo[index].status));
    }

    return todoList;
  }
}




/**This Code for read data from API and stores it in local realm database */
// var response = await http
 //     .get(Uri.parse('https://8414-185-114-120-159.eu.ngrok.io/todos'));
 //     print(response.body);
 // var todos = jsonDecode(response.body);
    
 // for (int index = 0; index < todos.length; index++) {
 //   
 //   var todo = TodoSchema(
 //     todos[index]['id'],
 //     todos[index]['name'],
 //     todos[index]['owner_image'],
 //     todos[index]['owner_name'],
 //     todos[index]['parent'],
 //     todos[index]['project_id'],
 //     todos[index]['start_date'],
 //     todos[index]['due_date'],
 //     todos[index]['status'],
 //      );

 //   realm.write(() {
 //     realm.add(todo);
 //   });

 //  }
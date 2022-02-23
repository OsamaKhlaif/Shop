import 'package:flutter/material.dart';
import 'package:todos/Components/todoCard.dart';
import 'package:todos/Data/todo.dart';
import 'package:todos/Model/todo.dart';

class Todos extends StatelessWidget {
  var title;
  var id;
  var parentTodo;
  var todos = TodoData();
  var specialTodos = [];

  Todos(this.title, this.id, parentTodo) {
    this.parentTodo = (parentTodo == null ? "0" : parentTodo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: (MediaQuery.of(context).size.height * 0.05),
              padding: EdgeInsets.all(10),
              child: const Text(
                "Root Tasks",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
          Container(
              height: (MediaQuery.of(context).size.height * 0.843),
              child: FutureBuilder(
                  future: todos.todoDataList(),
                  builder: (context, AsyncSnapshot<List<Todo>> snapshot) {
                    if (!snapshot.hasData) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [CircularProgressIndicator()]));
                    } else {
                      var lenghtTodosList = snapshot.data?.length;

                      for (var index = 0; index < lenghtTodosList!; index++) {
                        if (snapshot.data?[index].project_id == id &&
                            parentTodo == snapshot.data?[index].parent) {
                          specialTodos.add(snapshot.data?[index]);
                        }
                      }

                      return ListView.builder(
                          itemCount: specialTodos.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return Todos(
                                        specialTodos[index].name,
                                        specialTodos[index].project_id,
                                        specialTodos[index].id);
                                  }));
                                },
                                child: TodoCard(
                                    specialTodos[index].name,
                                    specialTodos[index].status,
                                    specialTodos[index].owner_image));
                          });
                    }
                  }))
        ])));
  }
}

import 'package:flutter/material.dart';
import 'package:todos/Components/todo_card.dart';
import 'package:todos/Data/todo.dart';
import 'package:todos/Model/todo.dart';

class Todos extends StatefulWidget {
  var title;
  var id;
  var parentTodo;
  var specialTodos = [];

  Todos(this.title, this.id, parentTodo) {
    this.parentTodo = (parentTodo == null ? "0" : parentTodo);
  }
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TodosState();
  }
 
}


class TodosState extends State<Todos>  {
  
var todos = TodoData();

  //deleteTask(task){
  //  
  //  setState(() {
  //    todos.deleteTask(task);
  //  });
  // 
  //  
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: (MediaQuery.of(context).size.height * 0.05),
              padding: const EdgeInsets.all(10),
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
                        if (snapshot.data?[index].project_id == widget.id &&
                            widget.parentTodo == snapshot.data?[index].parent) {
                          widget.specialTodos.add(snapshot.data?[index]);
                        }
                      }

                      return ListView.builder(
                          itemCount: widget.specialTodos.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                    return Todos(
                                        widget.specialTodos[index].name,
                                        widget.specialTodos[index].project_id,
                                        widget.specialTodos[index].id);
                                  }));
                                },
                                child: TodoCard(widget.specialTodos[index]/*, deleteTask(widget.specialTodos[index])*/));
                          });
                    }
                  }))
        ])));
  }
}

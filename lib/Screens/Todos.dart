import 'package:flutter/material.dart';
import 'package:todos/Components/todoCard.dart';
import 'package:todos/Data/todo.dart';
import 'package:todos/Model/todo.dart';

class Todos extends StatelessWidget {
  var title;
  var id;
  var parentTodo;

  var todos = TodoData();
  var todosList = [
    Todo(
        "1/5/2021",
        "15973",
        "Login Screen",
        "https://www.ikea.com/gb/en/images/products/smycka-artificial-flower-rose-red__0903311_pe596728_s5.jpg",
        "Osama",
        "0",
        "project123",
        "12/1/2021",
        "Finished"),
    Todo(
        "1/12/2021",
        "15974",
        "Home Screen",
        "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        "Rami",
        "0",
        "project123",
        "12/12/2020",
        "In Progress"),
    Todo(
        "15/10/2021",
        "15975",
        "Help Screen",
        "https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg",
        "Max",
        "15974",
        "project123",
        "12/8/2021",
        "In Progress"),
    Todo(
        "17/2/2021",
        "15976",
        "Sign Up Screen",
        "https://post.healthline.com/wp-content/uploads/2020/08/edible-flowers-732x549-thumbnail.jpg",
        "Mohmmad",
        "15973",
        "project123",
        "12/1/2021",
        "Finished"),
    Todo(
        "17/12/2021",
        "15977",
        "Custom View",
        "https://www.gardeningknowhow.com/wp-content/uploads/2019/09/flower-color-400x391.jpg",
        "Maher",
        "0",
        "project123",
        "12/10/2021",
        "Will start in the Future"),
    Todo(
        "17/11/2021",
        "15978",
        "Text View",
        "https://m.media-amazon.com/images/I/71zNWbTHzxL._SX679_.jpg",
        "Monther",
        "15977",
        "project123",
        "12/11/2021",
        "Will start in the Future"),
    Todo(
        "30/11/2021",
        "15979",
        "Image View",
        "https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg",
        "Murad",
        "15978",
        "project123",
        "17/11/2021",
        "Will start in the Future"),
    Todo(
        "17/12/2021",
        "15980",
        "Image Button",
        "https://cdn.britannica.com/88/194588-050-967E8D17/flowers.jpg",
        "Malik",
        "15979",
        "project123",
        "1/12/2021",
        "Will start in the Future"),
    Todo(
        "17/12/2021",
        "46710",
        "Home Screen",
        "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819__340.jpg",
        "Omar",
        "0",
        "project124",
        "12/10/2021",
        "Will start in the Future"),
    Todo(
        "17/12/2021",
        "46711",
        "Setting Screen",
        "https://cdn.shopify.com/s/files/1/1252/1803/products/just-for-you-29683816562873_1200x.jpg?v=1628058472",
        "Bassam",
        "0",
        "project124",
        "12/5/2021",
        "In Progress"),
    Todo(
        "26/10/2021",
        "46712",
        "Navigation View",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/spring-flowers-1613759017.jpg?crop=0.669xw:1.00xh;0.0635xw,0&resize=640:*",
        "Jamal",
        "46710",
        "project124",
        "12/10/2021",
        "Will start in the Future"),
    Todo(
        "1/11/2021",
        "46713",
        "Custom View",
        "https://www.flowerwatch.com/assets/files/leader/rozen.jpg",
        "Hammad",
        "46710",
        "project124",
        "27/10/2021",
        "Will start in the Future"),
    Todo(
        "15/8/2021",
        "18423",
        "Login Screen",
        "https://posterstore.eu/images/zoom/295-pink-flower-dream.jpg",
        "Tariq",
        "0",
        "project125",
        "12/6/2021",
        "Finished"),
    Todo(
        "17/10/2021",
        "18424",
        "Contact Screen",
        "https://www.theknot.com/tk-media/images/8d7f9239-ddb5-47e7-8c81-eb39283c8262~rs_768.h",
        "Tala",
        "0",
        "project125",
        "12/9/2021",
        "Will start in the Future"),
    Todo(
        "17/10/2021",
        "18425",
        "Exit Screen",
        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/gettyimages-1250978022-612x612-1612205237.jpg",
        "Tayem",
        "0",
        "project125",
        "17/10/2021",
        "Will start in the Future"),
    Todo(
        "2/10/2021",
        "18426",
        "Image View",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS731Vvr3m76vLYcN927ViUHmIPxRK0Y11iZA&usqp=CAU",
        "Thomas",
        "18424",
        "project125",
        "15/9/2021",
        "Will start in the Future"),
    Todo(
        "12/3/2022",
        "15981",
        "View Pager",
        "https://thumbs.dreamstime.com/b/purple-flower-2212075.jpg",
        "Ahmad",
        "0",
        "project123",
        "12/6/2021",
        "In Progress"),
    Todo(
        "12/9/2021",
        "15982",
        "1",
        "https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510__480.jpg",
        "Ibrahim",
        "0",
        "project123",
        "12/7/2021",
        "Finished"),
    Todo(
        "12/12/2021",
        "15983",
        "2",
        "https://www.farmersalmanac.com/wp-content/uploads/2021/04/forget-me-not-flower-as309740666.jpeg",
        "Alex",
        "0",
        "project123",
        "12/1/2021",
        "Finished"),
    Todo(
        "12/6/2022",
        "15984",
        "3",
        "https://i.natgeofe.com/n/57f411cd-dfe6-41a6-8d40-21ba583eccfb/lake-elsinore-california.jpg",
        "Talal",
        "0",
        "project123",
        "12/3/2022",
        "Will start in the Future"),
    Todo(
        "12/9/2021",
        "15985",
        "4",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvL8Md7YzP68ojhqd4bxjNl1PwCrEgash-tw&usqp=CAU",
        "Iyad",
        "0",
        "project126",
        "12/8/2021",
        "Finished"),
    Todo(
        "12/9/2022",
        "15986",
        "5",
        "https://cdn.shopify.com/s/files/1/2118/4657/collections/image3_625x625@2x.png?v=1634913544",
        "Malek",
        "0",
        "project123",
        "12/7/2022",
        "Will start in the Future"),
    Todo(
        "12/7/2022",
        "15987",
        "6",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNrpwB2pB7d2FyKXPuIbZsiEklXcfY3qZ4Tg&usqp=CAU",
        "Maya",
        "0",
        "project126",
        "12/9/2020",
        "In Progress")
  ];

  var specialTodos = [];

  Todos(this.title, this.id, parentTodo) {
    this.parentTodo = (parentTodo == null ? "0" : parentTodo);
  }

  @override
  Widget build(BuildContext context) {
    // for (int index = 0; index < todos.length; index++) {
    //   if (todos[index].project_id == id &&
    //       parentTodo == todos[index].parent) {
    //     specialTodos.add(todos[index]);
    //
    //   }
    // }

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
              child: Text(
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
                                  children: [CircularProgressIndicator()]));
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
                      })

                  

                  )
        ])));
  }
}

/*Column(
                    children:
                     specialTodos.map((todo) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          
                          return Todos(
                              todo.name, todo.project_id, todo.id);
                        }));
                      },
                      child: TodoCard(
                          todo.name, todo.status, todo.owner_image));
                }).toList()
                
                
                ), */

import 'package:flutter/material.dart';
import 'package:todos/Data/todo.dart';
import 'package:todos/Screens/details_task.dart';

class TodoCard extends StatelessWidget {
  var item;
  var deleteTask;

  TodoCard(this.item /*, this.deleteTask*/);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 0.1, color: Colors.grey),
                top: BorderSide(width: 0.1, color: Colors.grey))),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Row(
                  children: [
                    Container(
                        margin: const EdgeInsets.only(left: 8),
                        height: 60,
                        width: 60,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey[500]),
                              margin: const EdgeInsets.only(top: 7, bottom: 7),
                              width: 3,
                            ),
                            Container(
                                width: 45,
                                height: 45,
                                margin: const EdgeInsets.only(left: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.network(
                                    item.owner_image,
                                    fit: BoxFit.cover,
                                  ),
                                ))
                          ],
                        )),
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            item.name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            item.status,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IconButton(
                      splashRadius: 25,
                      icon: const Icon(Icons.attach_file),
                      iconSize: 20,
                      color: Colors.grey,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return DetailsTask(item);
                        }));
                      },
                    ),
                    PopupMenuButton(
                      //splashRadius: 25,
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      iconSize: 20,
                      itemBuilder: (context) {
                        return List.generate(2, (index) {
                          switch (index) {
                            case 0:
                              return PopupMenuItem(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [Icon(Icons.edit), Text('Edit')]),
                              );

                            case 1:
                              return PopupMenuItem(
                                onTap:()=> deleteTask,
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: const [
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        'Delete',
                                        style: TextStyle(color: Colors.red),
                                      )
                                    ]),
                              );

                            default:
                              return const PopupMenuItem(
                                child: Text("Error"),
                              );
                          }
                        });
                      },
                      //onPressed: () {
                      //  return
//
                      //},
                    ),
                  ]))
            ]));
  }
}

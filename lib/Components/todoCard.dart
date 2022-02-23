import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  var name;
  var status;
  var owner_image;

  TodoCard(this.name, this.status, this.owner_image);

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
                              margin: EdgeInsets.only(top: 7, bottom: 7),
                              width: 3,
                             
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 5),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.0),
                                  child: Image.network(
                                    owner_image,
                                    width: 45,
                                    height: 45,
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
                            name,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            status,
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
                      onPressed: () {},
                    ),
                    IconButton(
                      splashRadius: 25,
                      icon: const Icon(Icons.more_vert),
                      iconSize: 20,
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ]))
            ]));
  }
}

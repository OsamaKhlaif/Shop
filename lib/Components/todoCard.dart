import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {
  var name;
  var status;
  var owner_image;
  TodoCard(this.name, this.status, this.owner_image);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
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
                        margin: EdgeInsets.all(10),
                        height: 45,
                        width: 45,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.network(
                            owner_image,
                            width: 45,
                            height: 45,
                            fit: BoxFit.cover,
                          ),
                        )),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(color: Colors.black),
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
                      icon: Icon(Icons.attach_file),
                      iconSize: 20,
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      iconSize: 20,
                      color: Colors.grey,
                      onPressed: () {},
                    ),
                  ]))
            ]));
  }
}

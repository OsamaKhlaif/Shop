import 'dart:async';

import 'package:flutter/material.dart';

class DetailsTask extends StatelessWidget {
  var item;

  DetailsTask(this.item);

  @override
  Widget build(BuildContext context) {
    var marginImage = (MediaQuery.of(context).size.width - 150) * 0.5;

    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.only(
                  top: 50, left: marginImage, right: marginImage, bottom: 30),
              width: 150,
              height: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(
                  item.owner_image,
                  fit: BoxFit.cover,
                ),
              )),
          SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height - 330,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[300]),
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [const Text('Name:'), Text(item.name)],
                        ),
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]),
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text('Owner Name:'),
                              Text(item.owner_name)
                            ],
                          )),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Start Date:'),
                                Text(item.start_date)
                              ])),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const Text('Due Date:'),
                                Text(item.due_date)
                              ])),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[300]),
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [const Text('Status:'), Text(item.status)]))
                    ])),
          )
        ],
      )),
    );
  }
}

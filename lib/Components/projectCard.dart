import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  var projectsName;

  ProjectCard(
    this.projectsName,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(width: 0.1, color: Colors.grey),
                top: BorderSide(width: 0.1, color: Colors.grey))),
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.circular(5)),
                width: 30,
                height: 30,
                margin: const EdgeInsets.all(10),
                child: Icon(Icons.menu)),
            Text(
              projectsName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}

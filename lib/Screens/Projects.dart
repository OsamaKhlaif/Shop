import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:todos/Components/projectCard.dart';
import 'package:todos/Model/project.dart';
import 'package:todos/Data/project.dart';
import 'package:todos/Screens/Todos.dart';

class Projects extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProjectsState();
  }
}

class ProjectsState extends State<Projects> {
  var projects = ProjectData();

  clickProject(context, title, projectId) {
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return Todos(title, projectId, null);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Projects'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        body: Container(
            child: FutureBuilder(
                future: projects.projectDataList(),
                builder: (context, AsyncSnapshot<List<Project>> snapshot) {
                  if (!snapshot.hasData) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [CircularProgressIndicator()]));
                  } else {
                    return ListView.builder(
                        itemCount: snapshot.data?.length,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                              onTap: () => clickProject(
                                  context,
                                  snapshot.data?[index].name,
                                  snapshot.data?[index].id),
                              child: ProjectCard(snapshot.data?[index].name));
                        });
                  }
                })));
  }
}

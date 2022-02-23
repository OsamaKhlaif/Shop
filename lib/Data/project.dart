import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos/Model/project.dart';
import 'package:realm/realm.dart';
import 'package:todos/Schema/projectSchema.dart';

class ProjectData {
  //Constructor
  ProjectData();

  //Method for Read the data from API and store it in Local Realm Database.
  Future<List<Project>> projectDataList() async {
    List<Project> projectsList = []; //Store in it projects data.

    var config = Configuration([ProjectSchema.schema]);
    var realm = Realm(config);

  //Read all data stored in object name ProjectSchema.
    var project = realm.all<ProjectSchema>();

    for (int index = 0; index < project.length; index++) {
      projectsList.add(Project(project[index].id, project[index].name));
    }

    return projectsList;
  }
}


/**This Code for Read data from API and stores it in realm database*/
//var response = await http.get(Uri.parse('https://8414-185-114-120-159.eu.ngrok.io/projects'));
//
//var projects = jsonDecode(response.body);

//for(int index=0; index<projects.length; index++){
//var project = ProjectSchema(projects[index].id,projects[index].name);
//
//realm.write(() {
//  realm.add(project);
//});
//
//}

//realm.write(() {
//  realm.deleteMany(project);
//});
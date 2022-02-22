import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:todos/Model/project.dart';
import 'package:realm/realm.dart';

class ProjectData{

ProjectData();


Future<List<Project>> projectDataList() async{
List<Project> projectsList = [];
var response = await http.get(Uri.parse('https://d4f8-185-114-120-159.eu.ngrok.io/projects'));

var projects = jsonDecode(response.body);

for(int index=0; index<projects.length; index++){
projectsList.add(Project(projects[index]['id'], projects[index]['name']));
}

return projectsList;
}
}
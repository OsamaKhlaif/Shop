import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  var projectsName;
  
  ProjectCard(this.projectsName,);

  @override
  Widget build(BuildContext context) {
      return Card(
      
      elevation: 5,
            child: Row(
          children: [
            Container(
                width: 50,
                height: 50,
                padding: EdgeInsets.all(10),
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/VisualEditor_-_Icon_-_Menu.svg/768px-VisualEditor_-_Icon_-_Menu.svg.png')),
            Text(
              projectsName,
              style: TextStyle(),
            ),
          ],
        ));
  }
}

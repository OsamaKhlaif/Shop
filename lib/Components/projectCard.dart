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
              color: Colors.blue,
                width: 30,
                height: 30,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.all(10),
                
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

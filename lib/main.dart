import 'package:flutter/material.dart';
import 'package:todos/Screens/projects.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Projects(),
      
    ));
  }
}

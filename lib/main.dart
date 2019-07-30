import 'package:flutter/material.dart';
import 'todo_manager.dart';
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Todo App")),
        body : TodoManager()
        ),
      );
  }
}
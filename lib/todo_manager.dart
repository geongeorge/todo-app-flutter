import 'package:flutter/material.dart';
import './todo_item.dart';
import './add_todo.dart';

class TodoManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TodoManagerState();
  }
}

class _TodoManagerState extends State<TodoManager> {
  List<String> todos = ["Wake up"];

  void addTodo(str) {
    setState(() {
      todos.add(str);
    });
  }
  void removeTodo(str) {
    setState(() {
      todos.remove(str); //not ideal but would do
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AddTodo(addTodo),
        Column(
            children: todos.map((item){
          return TodoItem(item,removeTodo);
        }).toList())
      ],
    );
  }
}

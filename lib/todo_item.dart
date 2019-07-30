import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
  final String todo_str;
  final Function removeTodo;
  TodoItem(this.todo_str, this.removeTodo);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new GestureDetector(
        onTap: () {
          removeTodo(todo_str);
        },
        child: Text(
          todo_str,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

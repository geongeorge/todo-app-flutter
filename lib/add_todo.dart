import 'package:flutter/material.dart';
import 'package:todo_app/todo_manager.dart';

class AddTodo extends StatefulWidget {
  final Function addToTodo;

  AddTodo(this.addToTodo);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AddTodoState();
  }
}

class _AddTodoState extends State<AddTodo> {
  final txtController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    txtController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget>[
        TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Enter a new Todo'
            ),
            controller: txtController,
          ),
          RaisedButton(
            child: Text("Add"),
            onPressed: () {
              widget.addToTodo(txtController.text);
              txtController.text = "";
            },
          )
      ],
    );
  }
}
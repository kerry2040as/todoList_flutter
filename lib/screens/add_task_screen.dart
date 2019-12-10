import 'package:flutter/material.dart';

class AddTaskScreen extends StatefulWidget {
  AddTaskScreen({this.addTaskCallback});
  final Function addTaskCallback;
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  String todoText;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 25,
                ),
              ),
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                      borderSide: new BorderSide(
                    width: 3,
                    color: Colors.lightBlueAccent,
                  )),
                ),
                onChanged: (value) {
                  todoText = value;
                },
              ),
//              SizedBox(
//                height: 20,
//              ),
              FlatButton(
//                padding: EdgeInsets.all(10),
                color: Colors.lightBlueAccent,
                onPressed: () {
                  widget.addTaskCallback(todoText);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

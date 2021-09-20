import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool checkBoxState;
  final String taskTitle;
  final Function toggleCheckboxCallback;
  /* void toggleCheckBoxStateFun(bool checkBoxState) {
    setState(() {
      checkBoxValue = checkBoxState;
    });
  }*/
  TasksTile(
      {required this.checkBoxState,
      required this.taskTitle,
      required this.toggleCheckboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: checkBoxState ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
            checkColor: Colors.lightBlueAccent,
            activeColor: Colors.white,
            value: checkBoxState,
            onChanged: (newValue) {
              toggleCheckboxCallback(newValue);
            }
            /*onChanged: (newValue) {
    toggleCheckBoxState(newValue);
    },*/
            ));
  }
}

/*class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return
  }
}*/

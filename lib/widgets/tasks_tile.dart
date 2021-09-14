import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool isChecked = false;
  void checkBoxCallBack(bool checkBoxState) {
    setState(() {
      isChecked = checkBoxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Box One',
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckBox(
          isChecked: isChecked,
          toggleCheckBoxState: checkBoxCallBack,
        ));
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool isChecked;
  final Function toggleCheckBoxState;

  TaskCheckBox({required this.isChecked, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.lightBlueAccent,
      activeColor: Colors.white,
      value: isChecked,
      onChanged: toggleCheckBoxState(),
    );
  }
}

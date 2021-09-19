import 'package:flutter/material.dart';

class TasksTile extends StatefulWidget {
  @override
  _TasksTileState createState() => _TasksTileState();
}

class _TasksTileState extends State<TasksTile> {
  bool checkBoxValue = false;

  void toggleCheckBoxStateFun(bool? checkBoxState) {
    setState(() {
      checkBoxValue = checkBoxState!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          'Box One',
          style: TextStyle(
              decoration: checkBoxValue ? TextDecoration.lineThrough : null),
        ),
        trailing: TaskCheckBox(
            checkBoxState: checkBoxValue,
            toggleCheckBoxState: toggleCheckBoxStateFun));
  }
}

class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool?) toggleCheckBoxState;

  TaskCheckBox(
      {required this.checkBoxState, required this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.lightBlueAccent,
      activeColor: Colors.white,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}

import 'package:flutter/material.dart';


class TasksTile extends StatelessWidget {
  const TasksTile({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text('Box One'),
        trailing:Checkbox(
          checkColor: Colors.lightBlueAccent,
          value: isChecked, onChanged: null,)
    );
  }
}

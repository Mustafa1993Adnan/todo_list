import 'package:flutter/material.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: [
          TasksTile(),
        ],
      ),
    );
  }
}

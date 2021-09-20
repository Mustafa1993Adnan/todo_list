import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    Key? key,
    required this.isChecked,
  }) : super(key: key);

  final bool isChecked;

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Get Something 1'),
    Task(taskName: 'Get Something 2'),
    Task(taskName: 'Get Something 2'),
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
            checkBoxState: tasks[index].isDone,
            taskTitle: tasks[index].taskName,
            toggleCheckboxCallback: (newCheckboxStatus) {
              setState(() {
                tasks[index].toggleDone();
              });
            });
      },
      itemCount: tasks.length,
    ));
  }
}

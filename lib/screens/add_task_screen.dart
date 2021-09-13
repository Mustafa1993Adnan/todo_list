import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Add Text',
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            IconButton(onPressed: null, icon: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}

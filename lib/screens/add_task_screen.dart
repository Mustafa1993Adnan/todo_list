import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Add Text',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 35),
              ),
            ),
            TextField(
              autofocus: true,
              autocorrect: false,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlueAccent,
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 25, decorationColor: Colors.lightBlueAccent)),
              onPressed: () {},
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}

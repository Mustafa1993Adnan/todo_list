import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightBlueAccent,onPressed: null,
      child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children  : [
                CircleAvatar(child: Icon(Icons.list,size: 30,color: Colors.lightBlueAccent,),backgroundColor: Colors.white,radius: 30,),
                SizedBox(height: 10,),
                Text('To Do List',
                style: TextStyle(
                  color: Colors.white,fontSize: 30
                    ,fontWeight: FontWeight.bold
                ),),
                Text('Number of Tasks',style: TextStyle(color: Colors.white,fontSize: 15),),

              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
            ),
          )
        ],
      ),
    );
  }
}

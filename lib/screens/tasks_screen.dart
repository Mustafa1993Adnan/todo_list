
import 'package:flutter/material.dart';
import 'package:todo_list/screens/add_task_screen.dart';
import 'package:todo_list/widgets/tasks_list.dart';


// ignore: must_be_immutable
class TasksScreen extends StatelessWidget {
  bool isChecked = false;
  Widget buildModalSheet(BuildContext context){
    return(
    Container()
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.lightBlueAccent,
        onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => AddTaskScreen() );
      },
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30))),
              child: TasksList(isChecked: isChecked),
            ),
          )
        ],
      ),
    );
  }
}

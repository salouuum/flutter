import 'package:flutter/material.dart';
import 'package:flutter_course/modules/archivedtasks/archivedtasks.dart';
import 'package:flutter_course/modules/newtasks/New_Tasks.dart';

import '../modules/donetasks/donetasks.dart';

class ToDo_Home extends StatefulWidget {


  @override
  State<ToDo_Home> createState() => _ToDo_HomeState();
}

class _ToDo_HomeState extends State<ToDo_Home> {
  int index =0;
  List<Widget> list = [
    NewTasks(),
    DoneTasks(),
    ArchivedTasks(),
  ];
  List<Widget> appbar = [
    Text(
      'Tasks',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30.0,
      ),
    ),
    Text(
      'Done',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30.0,
      ),
    ),
    Text(
      'Archived',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
        fontSize: 30.0,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: appbar[index],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        onTap: (currentindex){
         setState(() {
           index = currentindex;
         });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon (
                  Icons.task,
                color: Colors.white,
              ),
            label:'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon (
              Icons.check_circle,
              color: Colors.white,
            ),
            label:'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon (
              Icons.archive,
              color: Colors.white,
            ),
            label:'Archived',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
class TasksScreen extends StatefulWidget {
  const TasksScreen({ Key? key }) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton:FloatingActionButton( 
      onPressed: (){},
     // ignore: sort_child_properties_last
     child: const Icon(Icons.save,color: Colors.white,),
      backgroundColor: Colors.teal[800],
  ),

  floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  bottomNavigationBar: BottomAppBar( 
    color:Colors.teal[800],
    shape: const CircularNotchedRectangle(), 
    notchMargin: 5,
    child: Row( 
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        IconButton(icon: const Icon(Icons.edit_note_sharp, color: Colors.white,), onPressed: () {},),
        IconButton(icon: const Icon(Icons.delete_sharp, color: Colors.white,), onPressed: () {},),
      ],
    ),
  ),
    
      backgroundColor: Colors.teal[500],
      body: Container(
        padding: const EdgeInsets.only(top:60, left:20, right:20, bottom:80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Row(
              children :[
                const Icon(Icons.playlist_add_check, size: 40, color: Colors.white, ),
                const SizedBox(width:20),const
                 Text("Daily Schedule", style: TextStyle(color:Colors.white,fontSize:40, fontWeight: FontWeight.bold),),
              ]
            ),
             const Text("4 Tasks",style: TextStyle(
              color: Colors.white,
              fontSize:18,
             ),),
             const SizedBox(height:30),
             Container(
              height: 550,
             decoration: const BoxDecoration(
             color:Colors.white,
             borderRadius: BorderRadius.all(Radius.circular(20),)
                  ),
                 )
          ]
        ),
      ),
    );
  }
}
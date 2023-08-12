import 'package:flutter/material.dart';

class mynavigator extends StatelessWidget {
  const mynavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.blueAccent,

      bottomNavigationBar: BottomNavigationBar(

             backgroundColor: Colors.blue,
          onTap:(int tap){
               if(tap==0) { print(" the erst tap");}
               if(tap==2) { print(" the therd tap");}
               if(tap==1) { print(" the zweita tap");}





          } ,

        items: [


          BottomNavigationBarItem(icon: Icon(Icons.add),tooltip: " add",label: "Add Item"),
          BottomNavigationBarItem(icon: Icon(Icons.add),tooltip: " add",label: "Add Item"),
          BottomNavigationBarItem(icon: Icon(Icons.add),tooltip: " add",label: "Add Item"),


        ],

      ),


    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class myCard extends StatelessWidget {
  const myCard({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.all(8.0),
      child:
      Card(
        child: SizedBox(height: 60,width: double.infinity,child:
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("(+49) 17682216044"),
        )),

      ),
    );

  }
}

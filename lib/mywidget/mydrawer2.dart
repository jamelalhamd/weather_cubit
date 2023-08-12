import 'package:flutter/material.dart';

class mydrawer2 extends StatelessWidget {
  const mydrawer2({super.key,
    required this.titel,
    required this.subtitel,
    required this.asset_photo_url,

    required this.listtitel1,
    this.onTap1,

    required this.listtitel2,
    this.onTap2,
    required this.listtitel3,
    this.onTap3, required this.icons1,
    required this.icons2,
    required this.icons3,
  this.colors=Colors.blue});


  final String titel;
  final String subtitel;
  final String asset_photo_url;

  final String listtitel1;
  final Function()? onTap1;
  final IconData icons1;
  final String listtitel2;
  final Function()? onTap2;
  final IconData icons2;
  final String listtitel3;
  final Function()? onTap3;
  final IconData icons3;
  final Color colors;




  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:
        ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(


              curve: Curves.linear,
              decoration: BoxDecoration(
                color: colors,
              ),

                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 34,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(radius: 33,

                            foregroundImage: AssetImage(asset_photo_url),

                            backgroundColor: Colors.tealAccent

                        ),
                      ),

                      //SizedBox(height: 5),
                      Text(titel, style: TextStyle(fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                      Text(subtitel, style: TextStyle(fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal)),

                    ],
                  ),
                ),



            ),
            ListTile(
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: onTap1,
              selectedColor: Colors.lightBlue,
              leading: Icon(icons1),
              title: Text(listtitel1),


            ),


            ListTile(
              leading:  Icon(icons2),
              title:  Text(listtitel2),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: onTap2,
              selectedColor: Colors.lightBlue,
            ),
            ListTile(
              leading: Icon(icons3),
              title:  Text(listtitel3),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
              selectedColor: Colors.lightBlue,
            ),
          ],
        )


    );
  }
}
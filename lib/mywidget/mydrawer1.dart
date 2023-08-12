import 'package:flutter/material.dart';

class mydrawer extends StatelessWidget {
  const mydrawer({super.key,
    required this.companyname,
    required this.email,
    required this.asset_photo_url,
    required this.asset_photo_url2,
    required this.listtitel1,


    this.onTap1,
    required this.listtitel2,
    this.onTap2,

    required this.listtitel3,
    this.onTap3});





  final String companyname;
  final String email;
  final String asset_photo_url;
  final String asset_photo_url2;
  final String listtitel1;
  final Function()? onTap1;
  final String listtitel2;
  final Function()? onTap2;
  final String listtitel3;
  final Function()? onTap3;





  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [


          UserAccountsDrawerHeader(
            currentAccountPictureSize: Size.square(80),

          accountName: Text(companyname,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
      accountEmail: Text(email,
          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal)),
      currentAccountPicture: CircleAvatar(
        backgroundColor: Colors.black,
        child: CircleAvatar(
         radius: 38,
            foregroundImage: AssetImage(asset_photo_url)),
      ),
      otherAccountsPictures: [

        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 20,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: CircleAvatar(foregroundImage: AssetImage(asset_photo_url2),),
            )),

        Text(''),
      ],

    ),


          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: onTap1,
            selectedColor: Colors.lightBlue,
            leading:  Icon(Icons.message),
            title:  Text(listtitel1),


          ),



          ListTile(
            leading: const Icon(Icons.account_circle),
            title:  Text(listtitel2),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: onTap2,
            selectedColor: Colors.lightBlue,
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title:  Text(listtitel3),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: onTap3,
            selectedColor: Colors.lightBlue,
          ),









       
       
       



 





        ],



      ));




  
  }
}

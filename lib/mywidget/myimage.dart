import 'package:flutter/material.dart';

class myimageasset extends StatelessWidget {
  const myimageasset({super.key,
   required this.width,
    required this.heinght,
    required this.url,
 });
 final double  width;
  final double heinght;
  final  String  url;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.all( 10.0),

      child: Container(


        width: width,
        height: heinght,
        child: Image.asset('$url',
            fit: BoxFit.fitWidth),

      ),


    );
  }
}

class myimagenet extends StatelessWidget {
  const myimagenet({super.key,
    required this.width,
    required this.heinght,
    required this.url,
  });
  final double  width;
  final double heinght;
  final  String  url;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.all( 10.0),

      child: Container(


        width: width,
        height: heinght,
        child: Image.network('$url',
            fit: BoxFit.scaleDown),

      ),


    );
  }
}


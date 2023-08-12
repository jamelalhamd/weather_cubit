import 'package:flutter/material.dart';

class mybutton1 extends StatelessWidget {
  const mybutton1({super.key,
    this.heigth=45,
     this.wight=double.infinity,
     this.color_font=Colors.white,
    this.padding_end=40,
    this.padding_start=40,
    this.padding_top=10,
   this.padding_bottom=5,
    this.fontsize=20,
 this.backgroundcolor=Colors.blue,
    this.onPressed,
    required this.tite,
     this.the_borderRadius=16});

  final double heigth;
  final double wight;
  final Color color_font;

  final double padding_end;
  final double padding_start;
  final  double padding_top;
  final double padding_bottom;
  final double fontsize;
  final Color backgroundcolor;
  final Function()? onPressed;
  final String tite;
 final double the_borderRadius;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsetsDirectional.only(end: padding_end, start: padding_start,top:padding_top ,bottom: padding_bottom),
      child: Container(
        height:heigth,
        width: wight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(the_borderRadius),
          color: backgroundcolor,),

        child: MaterialButton(onPressed: (){},
          child: Text(tite,style: TextStyle(fontWeight: FontWeight.bold,fontSize: fontsize,color: color_font)),

        ),

      ),
    ) ;
  }
}

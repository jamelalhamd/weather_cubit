import 'package:flutter/material.dart';

class myTextfiled_pass extends StatelessWidget {
     const  myTextfiled_pass({
    super.key,
    this.onChange,
    this.onSaved,
    this.maxLines = 1,
    this.controller,
    this.Hintext = '',

    this.onTap,
    this.clickabel = true,
    required this.label,
    this.suffixIcon = Icons.remove_red_eye_rounded,
    this.validator,
    this.paddingstart = 20,
    this.paddingend = 20,
    this.paddingtop = 5,
    this.paddingbottom = 5,
    this.color = Colors.black,
    this.outlinecolor = Colors.blue,
    this.prefixIcon,
  });

  final Function(String)? onChange;
  final Function(String?)? onSaved;
  final int maxLines;
  final TextEditingController? controller;
  final String Hintext;



  final Function()? onTap;
  final bool clickabel;
  final String label;
  final double paddingstart;
  final double paddingend;
  final double paddingtop;
  final double paddingbottom;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? validator;
  final TextInputType textInputType = TextInputType.text;
  final Color color;
  final Color outlinecolor;

  @override
  Widget build(BuildContext context) {

    bool ObscureText=true;
    return Padding(
      padding: EdgeInsets.only(
          bottom: paddingbottom,
          right: paddingstart,
          top: paddingtop,
          left: paddingend),
      child: TextFormField(
        onChanged: onChange,
        maxLines: maxLines,
        onSaved: onSaved,
        controller: controller,
        obscureText: ObscureText,
        style: const TextStyle(fontSize: 20.0),
        enabled: clickabel,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: Hintext,
          label: Text(label, style: TextStyle(color: color)),
          prefixIcon: Icon(prefixIcon, color: outlinecolor),
          // suffixIcon: Icon(suffixIcon,color: outlinecolor),
          suffixIcon: IconButton(
            icon: Icon(suffixIcon),
            onPressed: () {
              if (ObscureText) {
                ObscureText = false;

                print('>>>>>>>>>>>>>>>>>>>>>>>>> $ObscureText');
              } else {
                ObscureText = true;print('>>>>>>>>>>>>>>>>>>>>>>>>> $ObscureText');
              }
            },
          ),

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: outlinecolor, width: 3),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.black, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide(color: outlinecolor, width: 3),
          ),
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return (validator);
          }

          if(!RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,15}").hasMatch(value)){
            return (" please enter small and capital letters , nummers and symbols , ");}

          return " ";
        },
        keyboardType: TextInputType.emailAddress,
      ),
    );
  }
}


/*

suffixIcon: IconButton(onPressed: (){

if(ObscureText){

ObscureText=false;

}
else{
ObscureText=true;

}


},icon:
Icon(suffixIcon,color: outlinecolor,
),),

 */

/*


  const myTextfiled_pass({super.key,
    this.onChange,
    this.onSaved,
    this.maxLines=1,
    this.controller,
    this.Hintext='',
    this.ObscureText=true,
    this.onTap,
    this.clickabel=true,
    required this.label,

    this.validator,
    this.paddingstart=20,
    this.paddingend=20,
    this.paddingtop=5,
    this.paddingbottom=5,
    this.color=Colors.black,
    this.outlinecolor=Colors.blue,
    this.prefixIcon,
    this.suffixIcon=Icons.remove_red_eye_rounded,

  });




  final Function(String)? onChange;
  final Function(String?)? onSaved;
  final int maxLines;
  final  TextEditingController? controller ;
  final   String Hintext;
  final bool ObscureText;
  final Function()? onTap;
  final bool clickabel;
  final   String label;
  final double paddingstart;
  final double paddingend;
  final double paddingtop;
  final double paddingbottom;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? validator;
  final TextInputType textInputType=TextInputType.text;
  final Color color;
  final Color outlinecolor;


  @override
  Widget build(BuildContext context) {
    return Padding(
     padding:  EdgeInsets.only(bottom: paddingbottom,right: paddingstart,top: paddingtop,left: paddingend),
      child: TextFormField
        (
        onChanged: onChange!,
        maxLines: maxLines,
        onSaved:onSaved ,


        controller:controller ,
        obscureText: ObscureText,


        style: const TextStyle(fontSize: 20.0),
        enabled:clickabel ,


        onTap: onTap,

        decoration: InputDecoration(
          hintText: Hintext,
          label:Text(label,style: TextStyle(color: color)) ,
          prefixIcon: Icon(prefixIcon,color: outlinecolor),
          suffixIcon: Icon(suffixIcon,color: outlinecolor),
        //  suffixIcon: IconButton(onPressed: (){}, icon: Icon(prefixIcon,color: outlinecolor,),),





          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),

            borderSide: BorderSide(color: outlinecolor,width: 3),


          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),

            borderSide: BorderSide(color: Colors.black,width: 3),


          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),

            borderSide: BorderSide(color: outlinecolor,width: 3),


          ),


      ),
        validator: (value) {
          if(value!.isEmpty)
          {
            return (validator);
          }


          if(!RegExp("[a-z0-9!#\$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#\$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?").hasMatch(value)){
            return (" please write correct email");}



          return " ";


        },


        keyboardType: TextInputType.emailAddress,


      ),
    );














  }


}

 */
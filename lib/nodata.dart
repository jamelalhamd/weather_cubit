import 'package:flutter/material.dart';

class nodata extends StatelessWidget {
  const nodata({super.key});

  @override
  Widget build(BuildContext context) {
    return


      Center(

        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'There is no data regarding this City ',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.cyan),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'please try again ',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.cyan),
                  ),
                  Icon(Icons.emoji_emotions)
                ],
              ),
            ],
          ),
        ),



      );
  }
}

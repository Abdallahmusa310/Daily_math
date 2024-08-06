// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Coustumtext extends StatelessWidget {
   Coustumtext({super.key,this.textsize,this.text,this.textcolor});
  double? textsize;
  String? text;
  Color? textcolor;
  @override
  Widget build(BuildContext context) {
    return Text('$text',
    style: TextStyle(
      fontSize: textsize,
      fontFamily: 'Roboto',
      color: textcolor
    ),
    );
      
  
  }
}

class Addtext extends StatelessWidget {
  const Addtext({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        boxShadow:const [
          BoxShadow(
            spreadRadius: -10,
            offset: Offset(20, 0),
            blurRadius: 20,
            color: Color(0xffa963d7)
          )

        ],
        borderRadius: BorderRadius.circular(8),
        gradient:
        const LinearGradient(colors:
         [
          Color(0xff407bff),
          Color(0xff9467dd)
         ]
         )
         
        
      ),
      child:
      Center(
        child: Coustumtext(
        text: 'Add Group',
        textcolor: Colors.white,
        textsize: 15,
        ),
      ),      
    );
  }
}












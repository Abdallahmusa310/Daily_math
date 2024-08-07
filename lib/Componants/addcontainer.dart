// ignore_for_file: must_be_immutable

import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class Addbt extends StatelessWidget {
   Addbt({super.key,this.bttext});
  String?bttext;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child:  Container(
        height: 40,
        width: 110,
        decoration: BoxDecoration(
          boxShadow:const [
            BoxShadow(
              spreadRadius: -10,
              offset: Offset(20, 0),
              blurRadius: 28,
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
        child:  Center(child: Coustumtext(text: '$bttext',textcolor: Colors.white,textsize: 16,))
      ),
    );
  }
}
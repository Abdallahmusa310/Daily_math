import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class Newcontainer extends StatelessWidget {
  const Newcontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 60,
      decoration: BoxDecoration(
        boxShadow:const [
          BoxShadow(
            spreadRadius: -10,
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
      child: Center(child: Coustumtext(text: 'Add Student',)),
    );

  }
}
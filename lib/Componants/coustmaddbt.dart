// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Addtext extends StatelessWidget {
   Addtext({super.key, required this.routname});
  String?routname;
  @override
  Widget build(BuildContext context) {
    return  Container(
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
      child:
      Center(child: IconButton(onPressed:
       (){Navigator.pushNamed(context, '$routname');}
       , icon: const Icon(Icons.add,color: Colors.white,))),
    );    
  
  }
}

// ignore_for_file: must_be_immutable

import 'package:daily_math/Componants/newaddgroupsheet.dart';
import 'package:flutter/material.dart';

class Newaddbt extends StatelessWidget {
   Newaddbt({super.key,});
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
       (){   
        showModalBottomSheet(context: context, builder: (context){
                return const Newaddgroubsheet();}) ;
       
        
       }
       , icon: const Icon(Icons.group_add,color: Colors.white,))),
    );    
  
  }
}

 
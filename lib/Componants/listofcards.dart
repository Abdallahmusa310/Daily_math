import 'package:daily_math/Componants/coustmcard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listofdays extends StatelessWidget {
  const Listofdays({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      children: [
         GestureDetector(
          onTap:(){
            Navigator.pushNamed(context,'Saturday');
          } ,
           child: Cards(
            rootname: 'Saturday',
            cardcolorborder:const Color(0xff466CFF),
           dayname: 'Saturday',
           ),
         ),

          GestureDetector(
          onTap:(){
          Navigator.pushNamed(context,'Sunday');
          } , 
           child: Cards(cardcolorborder:const Color(0xffec7063),
           dayname: 'Sunday',
           rootname: 'Sunday',
           ),
         ),
         GestureDetector(
           onTap:(){
            Navigator.pushNamed(context,'Monday');
          } ,
           child: Cards(cardcolorborder: const Color(0xff466CFF),
           dayname: 'Monday',
           rootname: 'Monday',
           text: 'Groups',
           ),
         ),
         GestureDetector(
           onTap:(){
            Navigator.pushNamed(context,'Tuesday');
          } ,
           child: Cards(cardcolorborder:const Color(0xffdc7633),
           dayname: 'Tuesday',
           rootname: 'Tuesday',
           ),
         ),
         GestureDetector(
           onTap:(){
            Navigator.pushNamed(context,'Wednesday');
          },
           child: Cards(cardcolorborder:const Color(0xff7864F9),
           dayname: 'Wednesday',
           rootname: 'Wednesday',
           ),
         ),
         GestureDetector(
           onTap:(){
            Navigator.pushNamed(context,'Thursday');
          }, 
           child: Cards(cardcolorborder:const Color(0xff466CFF),
           dayname: 'Thursday',
           rootname: 'Thursday',
           ),
         ),      
            GestureDetector(
          onTap:(){
            Navigator.pushNamed(context,'Friday');
          } ,
           child: Cards(cardcolorborder:const Color(0xff7864F9),
           rootname: 'Friday',
           dayname:'Friday' ,
           ),
         ),
      ],
      );
  }
}

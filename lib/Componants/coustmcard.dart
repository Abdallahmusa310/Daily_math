import 'package:daily_math/Componants/coustmaddbt.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Cards extends StatelessWidget {
    Cards({super.key,required this.cardcolorborder,this.dayname,this.groubsnum,this.rootname,this.numperofgroups});
   String?rootname;
   Color  cardcolorborder;
   String? dayname;
   String? groubsnum;
   int? numperofgroups;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
         border:  BorderDirectional(
          bottom:BorderSide(width: 2,color: cardcolorborder),
          end: BorderSide(width: 0.5,color: cardcolorborder) ),
        borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          children: [
            ListTile(
              title:Coustumtext(
                text: dayname,
                textcolor: Colors.black,
                textsize: 25,
              ),
              subtitle:Text( '$numperofgroups Groups') ,
              trailing: Addtext(
                routname: '$rootname',
              ) ,
            )
          ],
        ),
      ),
    );
  }
}



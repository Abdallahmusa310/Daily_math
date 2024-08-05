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
class CoustmAppbar extends StatelessWidget {
  const CoustmAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Coustumtext(
            text:'Week Days',
            textsize: 25,
          ),
          const Spacer(flex: 1,),
          const Coustmicons()

        ],
      );
  }
}



class Cards extends StatelessWidget {
    Cards({super.key,this.cardcolor,this.dayname});
   Color?cardcolor;
   String? dayname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardcolor,
        ),
        child:  Column(
          children: [
            ListTile(
              title:Coustumtext(
                text: dayname,
                textcolor: Colors.white,
                textsize: 25,
              ),
              trailing: IconButton(onPressed: (){},
              icon:const Icon(
              color: Colors.black, Icons.add
              )),
            )
          ],
        ),
      ),
    );
  }
}




class Coustmicons extends StatelessWidget {
  const Coustmicons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.1)
      ),
      child: Center(child:IconButton(onPressed: (){},icon:const Icon(Icons.search))),
    );
  }
}

class Listofdays extends StatelessWidget {
  const Listofdays({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      children: [
         Cards(cardcolor:const Color(0xff466CFF),
         dayname: 'Saturday',
         ),
         Cards(cardcolor:const Color(0xff7864F9),
         dayname:'Friday' ,
         ),
         Cards(cardcolor:const Color(0xffec7063),
         dayname: 'Sunday',
         ),
         Cards(cardcolor:const Color(0xff58d68d),
         dayname: 'Monday',
         ),
         Cards(cardcolor:const Color(0xffdc7633),
         dayname: 'Tuesday',
         ),
         Cards(cardcolor:const Color(0xffaab7b8),
         dayname: 'Wednesday',
         ),
         Cards(cardcolor:const Color(0xfff4d03f ),
         dayname: 'thursday',
         ),         
      ],
      );
  }
}

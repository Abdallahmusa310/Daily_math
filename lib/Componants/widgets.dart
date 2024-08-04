// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      fontFamily: 'laywriteDEGrund',
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
    Cards({super.key,this.cardcolor});
   Color?cardcolor;
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
                text: 'Saturday',
                textcolor: Colors.black,
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
    return ListView(
      children: [
         Cards(cardcolor:const Color(0xff466CFF),)
      ],
      );
  }
}
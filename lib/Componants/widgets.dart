// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Coustumtext extends StatelessWidget {
   Coustumtext({super.key,this.textsize,this.text});
  double? textsize;
  String? text;


  @override
  Widget build(BuildContext context) {
    return Text('$text',
    style: TextStyle(
      fontSize: textsize,
      fontFamily: 'laywriteDEGrund',
      color: Colors.white,
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
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
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
      child: const Center(child:Icon(Icons.search)),
    );
  }
}
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













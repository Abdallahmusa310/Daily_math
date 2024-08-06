// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
class Coustmtextfield extends StatelessWidget {
   Coustmtextfield({super.key,this.hintText,this.maxsize});
  String? hintText;
  int? maxsize;

  @override
  Widget build(BuildContext context) {
    return  TextField(
      maxLines: maxsize,
      decoration: InputDecoration(
        hintText: '$hintText',
        border: buildborder(),
        enabledBorder: buildborder()
      ),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 72, 33, 243)
        )
        
      );
  }
}
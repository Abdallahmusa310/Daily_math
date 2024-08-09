// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class Newfield extends StatelessWidget {
   Newfield({super.key,this.hinttext,});
  String? hinttext;
  //  TextEditingController studentnamee=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: '$hinttext',
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

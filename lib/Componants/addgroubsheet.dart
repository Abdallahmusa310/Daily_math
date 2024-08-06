
import 'package:daily_math/Componants/coustntextfield.dart';
import 'package:flutter/material.dart';

class Addgroubsheet extends StatelessWidget {
  const Addgroubsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(32),
      child:  Column(
        children: [
        const  SizedBox(height: 32,),
          Coustmtextfield(hintText: 'Group name',maxsize: 1,),
          const SizedBox(height: 32,),
          Coustmtextfield(hintText: 'Group mempers',maxsize:5 ,),
        ],
      ),
    );
  }
}
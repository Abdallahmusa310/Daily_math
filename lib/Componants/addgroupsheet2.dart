
import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/coustntextfield.dart';
import 'package:flutter/material.dart';

class Newaddgroubsheet extends StatelessWidget {
  const Newaddgroubsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(32),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
          const  SizedBox(height: 32,),
            Coustmtextfield(hintText: 'Student Name',maxsize: 1,),
            const SizedBox(height: 32,),
            Addbt(bttext: 'Add Student'),
            


          ],
        ),
      ),
    );
  }
}
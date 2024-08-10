
import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/coustntextfield.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';
class Addgroubsheet extends StatelessWidget {
  const Addgroubsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(32),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            CloseButton(onPressed:(){Navigator.pop(context);},),
            Coustumtext(text: 'Create New group',textsize: 20),
            const  SizedBox(height: 32,),
            Coustmtextfield(hintText: 'Group name',maxsize: 1,),
            const SizedBox(height: 32,),
            Coustmtextfield(hintText: 'Grade',maxsize: 1,),
            const SizedBox(height: 32,),
            Coustmtextfield(hintText: 'Stat time',maxsize: 1,),
            const SizedBox(height: 32,),
            Addbt(bttext: 'Create Group'),
          ],
        ),
      ),
    );
  }
}

import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/coustntextfield.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';
class Addgroubsheet extends StatelessWidget {
  const Addgroubsheet({super.key});
  @override
  Widget build(BuildContext context) {
    return const Creategroupsheet();
  }
}
class Creategroupsheet extends StatefulWidget {
  const Creategroupsheet({
    super.key,
  });

  @override
  State<Creategroupsheet> createState() => _CreategroupsheetState();
}

class _CreategroupsheetState extends State<Creategroupsheet> {
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? groupname,grade,starttime;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(32),
      child:  SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Form(
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CloseButton(onPressed:(){Navigator.pop(context);},),
              Coustumtext(text: 'Create New group',textsize: 20),
              const  SizedBox(height: 32,),
              Coustmtextfield(onSaved:(data){groupname=data;},hintText: 'Group name',maxsize: 1,),
              const SizedBox(height: 32,),
              Coustmtextfield(onSaved:(data){grade=data;},hintText: 'Grade',maxsize: 1,),
              const SizedBox(height: 32,),
              Coustmtextfield(onSaved:(data){starttime=data;},hintText: 'Stat time',maxsize: 1,),
              const SizedBox(height: 32,),
              Addbt(bttext: 'Create Group',
              ontab:()
              {if (formkey.currentState!.validate()){
                formkey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
              
              },),
            ],
          ),
        ),
      ),
    );
  }
}





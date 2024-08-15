import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/coustntextfield.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:daily_math/cubits/cubit/groups_cubit.dart';
import 'package:daily_math/models/card_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

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
  String? groupsname,grade,starttime;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const EdgeInsets.all(32),
      child:  ModalProgressHUD(
        inAsyncCall: State is Groupsloading ? true : false ,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Form(
            autovalidateMode: autovalidateMode,
            child: Column(
              children: [
                CloseButton(onPressed:(){Navigator.pop(context);},),
                Coustumtext(text: 'Create New group',textsize: 20),
                const  SizedBox(height: 32,),
                Coustmtextfield(onSaved:(data){groupsname=data;},hintText:'Group name',maxsize: 1,),
                const SizedBox(height: 32,),
                Coustmtextfield(onSaved:(data){grade=data;},hintText: 'Grade',maxsize: 1,),
                const SizedBox(height: 32,),
                Coustmtextfield(onSaved:(data){starttime=data;},hintText: 'Stat time',maxsize: 1,),
                const SizedBox(height: 32,),
                Addbt(bttext: 'Create Group',
                ontab:()
                {
                  BlocProvider.of<GroupsCubit>(context).addgroup
                  (Cardmodel(groupname: groupsname!, groupgrade: grade!, grouptime: starttime!));
                  setState(() {
                    
                  });
                },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
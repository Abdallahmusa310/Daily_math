import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/groupfeild.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:daily_math/cubits/cubit/groupcubt_cubit.dart';
import 'package:daily_math/models/groups_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Coustmform extends StatefulWidget {
  const Coustmform({super.key,});
  @override
  State<Coustmform> createState() => _CoustmformState();
}

class _CoustmformState extends State<Coustmform> {
  final GlobalKey<FormState> keyform = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, suptitle, stime;
  bool isload=false;
  @override
  Widget build(BuildContext context) {
    return Form(
              key: keyform,
              autovalidateMode: autovalidateMode,
              child: Column(
                children:[
                const SizedBox(height:25,),
                CloseButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
               Coustumtext(text: 'create new group',textsize: 20,),
              const SizedBox(height:25,),
             Padding(
                padding:const EdgeInsets.symmetric(horizontal: 40),
                child: Groupfeild(
                  lapeltext: 'group name',
                onsave:(data) {
                    title = data;
                  },
                  ),
              ),
              const SizedBox(height:30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Groupfeild(
                  lapeltext: 'grade',
                  onsave: (data) {
                      suptitle = data;
                    },
                ),
              ),
              const SizedBox(height:30,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Groupfeild(
                  lapeltext: 'Start time',
                  onsave:  (data) {
                      stime = data;
                    },
                ),
              ),
                const SizedBox(height: 30),
                Addbt(
                  bttext: 'create group',
                  ontab: () {
                    if (keyform.currentState!.validate()){
                      keyform.currentState!.save();
                      var groupmpdel=
                    GroupModel(nameofgruop: title!, gradeofgroup: suptitle!, starttimeofgroup: stime!);
                    BlocProvider.of<GroupcubtCubit>(context).addgroup(groupmpdel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                )
              ]),
            );
  }
}
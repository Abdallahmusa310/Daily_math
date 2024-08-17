import 'package:daily_math/Componants/newcoustmcard.dart';
import 'package:daily_math/cubits/cubit/listofgruops_cubit.dart';
import 'package:daily_math/models/groups_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Listofgroups extends StatelessWidget {
  const Listofgroups({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListofgruopsCubit,ListofgruopsState>(
      builder: (context, state) {
        List<GroupModel>group=BlocProvider.of<ListofgruopsCubit>(context).groups!;
        return ListView.builder(
                          itemCount:group.length,
                          itemBuilder: (context, index){ 
                          return Newcards(
                          colorborder: const Color.fromARGB(255, 18, 53, 167),
                          );
       } );
      },
    );
              

      
  }
}
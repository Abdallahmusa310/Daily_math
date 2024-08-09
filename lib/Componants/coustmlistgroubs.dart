// ignore_for_file: must_be_immutable

import 'package:daily_math/controllaer/home_control.dart';
import 'package:flutter/material.dart';

class Liststudents extends StatelessWidget {
   Liststudents({super.key, this.controller});
  HomeController? controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: ListView.builder(itemBuilder: (context, index){
                return ListTile(
                  title:Text(controller!.students.value[index].studentname),
                  trailing: IconButton(onPressed: (){controller!.removeStudent(index);},
                  icon:const Icon(Icons.delete,color: Colors.red,)),
                );
              }
              )
              );
  }
}
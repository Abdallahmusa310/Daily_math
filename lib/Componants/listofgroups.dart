import 'package:daily_math/Componants/coustmcard.dart';
import 'package:flutter/material.dart';

class Listofgroups extends StatelessWidget {
  const Listofgroups({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,index){
        return Cards(
          cardcolorborder:Colors.purple

          );
      }
      );
  }
}
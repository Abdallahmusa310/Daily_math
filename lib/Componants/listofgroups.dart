import 'package:daily_math/Componants/newcoustmcard.dart';
import 'package:flutter/material.dart';

class Listofgroups extends StatelessWidget {
  const Listofgroups({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,index){
        return Newcards(
          colorborder: const Color.fromARGB(255, 18, 53, 167),

        );
      }
      );
  }
}
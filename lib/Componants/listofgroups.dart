import 'package:daily_math/Componants/newcoustmcard.dart';
import 'package:flutter/material.dart';

class Listofgroups extends StatelessWidget {
  const Listofgroups({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,index){
        return Newcards(
                        cardcolorborder: const Color.fromARGB(255, 123, 30, 139),
                    cardcolorborder2: const Color.fromARGB(255, 25, 37, 212),
          
        );
      }
      );
  }
}
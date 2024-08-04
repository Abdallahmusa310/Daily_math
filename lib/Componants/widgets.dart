// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Coustumtext extends StatelessWidget {
   Coustumtext({super.key,this.text});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text('$text',
    style:const TextStyle(
      fontFamily: 'laywriteDEGrund'
    ),
    );
      
  
  }
}
class CoustmAppbar extends StatelessWidget {
  const CoustmAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Coustumtext(
            text: 'week days',
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))

        ],
      );
  }
}
class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
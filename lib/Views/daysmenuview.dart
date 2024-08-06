// ignore_for_file: must_be_immutable
import 'package:daily_math/Componants/Appbar.dart';
import 'package:daily_math/Componants/listofcards.dart';
import 'package:flutter/material.dart';
class Daysmenu extends StatelessWidget {
  const Daysmenu({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     
      body:  Padding(
        padding:EdgeInsets.only(
        top: 60,
        right: 14,
        left: 14
        ),
        child: Column(
          children: [
          CoustmAppbar(),
          Expanded(child: Listofdays()),
          ],
        ),
      ),
      
    );
  }
}


import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding:  EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24
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
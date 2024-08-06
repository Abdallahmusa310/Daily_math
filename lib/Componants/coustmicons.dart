import 'package:flutter/material.dart';

class Coustmicons extends StatelessWidget {
  const Coustmicons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 40,
      height: 40,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.1)
      ),
      child: Center(child:IconButton(onPressed: (){},icon:const Icon(Icons.search))),
    );
  }
}
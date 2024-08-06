import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            floatingActionButton: FloatingActionButton(
            onPressed: (){},
            child: const Icon(Icons.add,color: Colors.purple,),
            )

    );
  }
}
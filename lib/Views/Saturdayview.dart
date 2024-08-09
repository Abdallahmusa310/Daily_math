
// ignore_for_file: file_names
import 'package:daily_math/Componants/coustmelvatebbt.dart';
import 'package:daily_math/Componants/newcoustmcard.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class Saturday extends StatelessWidget {
  const Saturday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const Elvatedbt(),
            body:  Padding(
              padding: const EdgeInsets.only(

       top: 60,
        right: 14,
        left: 14
              ),
              child: Column(
                children: [
                    Row(
                      children: [
                        IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon(Icons.exit_to_app)),
                        Coustumtext(
                          text: 'Saturday',
                          textcolor: Colors.black,
                          textsize: 25,
                        ),
                      ],
                    ),
                       Newcards(
                        colorborder: const Color.fromARGB(255, 18, 53, 167),

                  )

                    
                ],
              ),
            ) ,

    );
  }
}
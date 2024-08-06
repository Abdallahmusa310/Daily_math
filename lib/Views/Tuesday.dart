// ignore_for_file: file_names

import 'package:daily_math/Componants/addgroubsheet.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class Tuesday extends StatelessWidget {
  const Tuesday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return const Addgroubsheet();

              });
            },
            child: const Icon(Icons.add,color: Colors.purple,),
            ),
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
                            text: 'Tuesday',
                            textcolor: Colors.purple,
                            textsize: 25,
                          ),
                        ],
                  )
                ],
              ),
            ) ,

    );
  }
}
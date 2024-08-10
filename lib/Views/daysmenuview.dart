import 'package:daily_math/Componants/addgroubsheet.dart';
import 'package:flutter/material.dart';
class Daysmenu extends StatelessWidget {
  const Daysmenu({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       floatingActionButton: FloatingActionButton(
            onPressed: (){
              showModalBottomSheet(context: context, builder: (context){
                return const Addgroubsheet();
              });
            },
            child: const Icon(Icons.add,color: Colors.purple,),
            ),
            body: const Column() ,

     
     
      
    );
  }
}


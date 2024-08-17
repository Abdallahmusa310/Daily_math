import 'package:daily_math/Componants/addcontainer.dart';
import 'package:daily_math/Componants/finalsheetgroup.dart';
import 'package:flutter/material.dart';

class Elvatedbt extends StatelessWidget {
  const Elvatedbt({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
        child: Addbt(textsize: 14,bttext: 'Create group',),

      onTap:(){
        showModalBottomSheet(
          isScrollControlled: true,
  
          context: context, builder: (context){
           return const MyWidget();
      } ,
      );
      }
      
      
    );
    
    
  
  }
}
        //  FloatingActionButton(          
        //   foregroundColor: Colors.black,
        //   hoverColor: Colors.black,
        //   backgroundColor: const
        //   Color.fromARGB(255, 221, 221, 221),
        //     onPressed: (){
        //       showModalBottomSheet(context: context, builder: (context){
        //         return const Addgroubsheet();
        //       });
        //     },
        //     child: const Icon(Icons.add,color: Color.fromARGB(255, 53, 39, 176)),
        //     );

// ignore_for_file: non_constant_identifier_names

import 'package:daily_math/Componants/addnewcontainer.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Newaddgroubsheet extends StatefulWidget {
   const Newaddgroubsheet({super.key,});
  @override
  State<Newaddgroubsheet> createState() => _NewaddgroubsheetState();
}
class _NewaddgroubsheetState extends State<Newaddgroubsheet> {
  TextEditingController studentnamee=TextEditingController();
  TextEditingController parentphone=TextEditingController();
  List<Studentmodel>Studentss=List.empty(growable: true);
  int selctedindex=-1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(32),
      child: Expanded(
        child: Column(
            children: [
             TextField(
        controller: studentnamee,
        decoration: InputDecoration(
          hintText: 'student name',
          border: createborder(),
          enabledBorder: createborder(),
        ),
            ),
               const  SizedBox(height: 28,),
                 TextField(
                controller: parentphone,
                decoration: InputDecoration(
                hintText:   'parent phone',
                border: createborder(),
                enabledBorder: createborder(),
        ),
            ),
            const  SizedBox(height: 28,),
               
               GestureDetector(
                onTap: (){  
                  String phone=parentphone.text.trim();
                  String name=studentnamee.text.trim();
                  if (name.isNotEmpty&&phone.isNotEmpty) {
                    setState(() {
                      Studentss.add(Studentmodel( studentname: name,parentrhone: phone));
                    });
                  }
                  },
                child: const Newcontainer(),
                ),
                Studentss.isEmpty? const Text('no students yet'):
                Expanded(
                  child: ListView.builder(
                  physics: const BouncingScrollPhysics(),    
                    itemCount: Studentss.length,                
                    itemBuilder: (context,index)=>getrow(index)
                    ),
                )    
            ]
          ),
      ),    
    );    
  }
  Widget getrow(int index){
  return  Column(
    children: [
      ListTile(
       title:Text(Studentss[index].studentname),
       trailing:SizedBox(
        width: 96,
         child: Row(
          children: [
            IconButton(onPressed:(){
              studentnamee.text=Studentss[index].studentname;
              setState(() {
                selctedindex=index;
              });
            }, icon:const Icon(Icons.edit)),
            IconButton(onPressed:(){{setState(() {
              Studentss.removeAt(index);
            });}}, icon:const Icon(Icons.delete))
          ],
         ),
       ),
      ),
      ListTile(
   title: Row(children: [
    IconButton( onPressed:()async{
      final Uri uri=Uri(
        scheme: 'tel',
        path: studentnamee.text=Studentss[index].parentrhone,
      );
      await launchUrl(uri);

    },icon:const Icon(Icons.call)),
    Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Text(Studentss[index].parentrhone),
    ),
   ],),

   trailing:SizedBox(
    width: 96,
     child: Row(
      children: [
        IconButton(onPressed:(){
          studentnamee.text=Studentss[index].studentname;
          setState(() {
            selctedindex=index;
          });
        }, icon:const Icon(Icons.edit)),
        IconButton(onPressed:(){{setState(() {
          Studentss.removeAt(index);
        });}}, icon:const Icon(Icons.delete))
      ],
     ),
   ),
  )
    ],
  );
  
  
}
  OutlineInputBorder createborder() {
    return OutlineInputBorder(
      
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 72, 33, 243)
        )
        
      );
  }
}

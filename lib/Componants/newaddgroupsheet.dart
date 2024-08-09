
// ignore_for_file: must_be_immutable, non_constant_identifier_names, collection_methods_unrelated_type
import 'package:daily_math/Componants/addnewcontainer.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:flutter/material.dart';
class Newaddgroubsheet extends StatefulWidget {
   const Newaddgroubsheet({super.key,});
  @override
  State<Newaddgroubsheet> createState() => _NewaddgroubsheetState();
}
class _NewaddgroubsheetState extends State<Newaddgroubsheet> {
  TextEditingController studentnamee=TextEditingController();
  List<Studentmodel>Studentss=List.empty(growable: true);
  int selctedindex=-1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.all(32),
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
             const  SizedBox(height: 32,),
             GestureDetector(
              onTap: (){  
                String name=studentnamee.text.trim();
                if (name.isNotEmpty) {
                  setState(() {
                    Studentss.add(Studentmodel( studentname: name));
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
    );    
  }
  Widget getrow(int index){
  return  ListTile(
   title:Text(Studentss[index].studentname),
   trailing:SizedBox(
    width: 80,
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
            // GestureDetector(
            //   onTap: (){
            //     controller!.Addstudent(controller!.name.text,controller!.grade.hashCode);
            //   },
            //   child: Addbt(bttext: 'Add Student')),


              //   Expanded(child: ListView.builder(itemBuilder: (context, index){
              //   return ListTile(
              //      title:Text(controller!.students.value[index].studentname),
              //      subtitle:Text(controller!.students.value[index].studentgrade),
              //     trailing: IconButton(onPressed: (){controller!.removeStudent(index);},
              //      icon:const Icon(Icons.delete,color: Colors.red,)),
              //   );
              // }
              // )
              // )

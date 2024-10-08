import 'package:daily_math/Componants/coustmaddbt2.dart';
import 'package:daily_math/Componants/newaddStudentsheet.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Newcards extends StatefulWidget {
  Newcards({
  super.key,required this.colorborder,this.dayname,this.groubsnum,
  this.rootname,this.numperofgroups,this.to,this.from});
   String?rootname;
   Color  colorborder;
   String? dayname;
   String? groubsnum;
   int? numperofgroups;
   String?to,from;

  @override
  State<Newcards> createState() => _NewcardsState();
}

class _NewcardsState extends State<Newcards> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
         border:  BorderDirectional(
          bottom:BorderSide(width: 2,color:widget.colorborder),
          end: BorderSide(width: 0.5,color: widget.colorborder) ),
        borderRadius: BorderRadius.circular(16),
        ),
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet(context: context, builder: (context){
            return const Newaddgroubsheet();});},
          child: Column(
            children: [
              ListTile(
                title:Coustumtext(
                  text:'' ,
                  textcolor: Colors.black,
                  textsize: 25,
                ),
                subtitle:const Column(
                  children: [
                    Text('Start At'),
                    Text('grade')
                  ],
                ),
                trailing: Newaddbt()
              )
            ],
          ),
        ),
      ),
    );
  }
}
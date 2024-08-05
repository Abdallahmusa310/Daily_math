import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Homeview extends StatefulWidget {
  const Homeview({super.key});

  @override
  State<Homeview> createState() => _HomeviewState();
}

class _HomeviewState extends State<Homeview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        onTabChange:(index){
          Navigator.pushNamed(context,'Groubday');
        },
        tabs:const [          
          GButton(icon: Icons.home)
          
        ]
        ),
      body: const Padding(
        padding:EdgeInsets.only(
        top: 60,
        right: 14,
        left: 14
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
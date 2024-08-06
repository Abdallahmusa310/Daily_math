// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:daily_math/Views/Setting.dart';
import 'package:daily_math/Views/daysmenuview.dart';
import 'package:daily_math/Views/homeview.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
    int slectedindex=0;
    List<Widget>screens=[
    const Settingview(),
    const Homeview(),
    const Daysmenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
         body: screens[slectedindex],
         bottomNavigationBar:
         CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color:const Color.fromARGB(255, 110, 74, 74).withOpacity(0.1),
          animationDuration: const Duration(milliseconds: 300),
          items:
       const  [  
            Icon(Icons.settings,
            color: Color.fromARGB(255, 53, 39, 176)),
            Icon(Icons.home,
            color: Color.fromARGB(255, 53, 39, 176)),
            Icon(Icons.menu,
            color: Color.fromARGB(255,53, 39, 176))
           ],
           onTap: (i){
            setState((){
              slectedindex=i;
            });
           },
          
          ),),
    );
  }
}
import 'package:daily_math/Componants/Coustmnavigationbar.dart';
import 'package:daily_math/Views/Setting.dart';
import 'package:daily_math/Views/daysmenuview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Dailymath());
}

class Dailymath extends StatelessWidget {
  const Dailymath({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      routes:{
      'Homeview'   :(context) => const Daysmenu(),
      'Groubday'   :(context) => const Daysmenu(),
      'Settingview':(context) => const Settingview(),
      'Navbar'     :(context) => const  Navbar()
      },
      initialRoute: 'Navbar',
    );
  }
}
    
   
     

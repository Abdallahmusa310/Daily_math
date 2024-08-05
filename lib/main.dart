import 'package:daily_math/Views/groub_day.dart';
import 'package:daily_math/Views/home_view.dart';
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
      theme: ThemeData.dark(),
      routes:{
      'Homeview':(context) => const Homeview(),
      'Groubday':(context) => const Groubday()
      },
      initialRoute: 'Homeview',
    );
  }
}
    
   
     

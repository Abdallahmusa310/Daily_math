import 'package:flutter/material.dart';

void main() {
  runApp(const Dailymath());
}

class Dailymath extends StatelessWidget {
  const Dailymath({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark(),
      home: const Scaffold() ,
    );
  }
}
    
   
     

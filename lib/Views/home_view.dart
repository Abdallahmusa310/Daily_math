import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CoustmAppbar()
        ],
      ),
      
    );
  }
}
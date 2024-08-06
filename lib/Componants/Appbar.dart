// ignore_for_file: file_names

import 'package:daily_math/Componants/coustmicons.dart';
import 'package:daily_math/Componants/widgets.dart';
import 'package:flutter/material.dart';

class CoustmAppbar extends StatelessWidget {
  const CoustmAppbar({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Coustumtext(
            text:'Week Days',
            textsize: 25,
          ),
          const Spacer(flex: 1,),
          const Coustmicons()
        ],
      );
  }
}
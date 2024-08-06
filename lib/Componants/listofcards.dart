import 'package:daily_math/Componants/coustmcard.dart';
import 'package:flutter/material.dart';

class Listofdays extends StatelessWidget {
  const Listofdays({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
      children: [
         Cards(
          rootname: 'Saturday',
          cardcolorborder:const Color(0xff466CFF),
         dayname: 'Saturday',
         ),
         Cards(cardcolorborder:const Color(0xff7864F9),
         rootname: 'Friday',
         dayname:'Friday' ,
         ),
         Cards(cardcolorborder:const Color(0xffec7063),
         dayname: 'Sunday',
         rootname: 'Sunday',
         ),
         Cards(cardcolorborder: const Color(0xff466CFF),
         dayname: 'Monday',
         rootname: 'Monday',
         ),
         Cards(cardcolorborder:const Color(0xffdc7633),
         dayname: 'Tuesday',
         rootname: 'Tuesday',
         ),
         Cards(cardcolorborder:const Color(0xff7864F9),
         dayname: 'Wednesday',
         rootname: 'Wednesday',
         ),
         Cards(cardcolorborder:const Color(0xff466CFF),
         dayname: 'Thursday',
         rootname: 'Thursday',
         ),         
      ],
      );
  }
}

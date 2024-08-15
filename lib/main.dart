import 'package:daily_math/Componants/Coustmnavigationbar.dart';
import 'package:daily_math/Componants/constans.dart';
import 'package:daily_math/Views/Friday.dart';
import 'package:daily_math/Views/Saturdayview.dart';
import 'package:daily_math/Views/Setting.dart';
import 'package:daily_math/Views/Thursday.dart';
import 'package:daily_math/Views/Tuesday.dart';
import 'package:daily_math/Views/Wednesday.dart';
import 'package:daily_math/Views/daysmenuview.dart';
import 'package:daily_math/Views/homeview.dart';
import 'package:daily_math/Views/monday.dart';
import 'package:daily_math/Views/sunday.dart';
import 'package:daily_math/models/groups_model.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:daily_math/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  runApp(const Dailymath());
  await Hive.initFlutter();
  Bloc.observer=(SimpleBlocObserver());
  Hive.registerAdapter(StudentmodelAdapter());
  Hive.registerAdapter(GroupModelAdapter());
  await Hive.openBox<GroupModel>(kgroupbox);
  await Hive.openBox<Studentmodel>(kgroupbox);
  
}

class Dailymath extends StatelessWidget {
  const Dailymath({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner:false,
      theme: ThemeData.light(),
      routes:{
      'Homeview'   :(context) => const Homeview(),
      'Groubday'   :(context) => const Daysmenu(),
      'Settingview':(context) => const Settingview(),
      'Navbar'     :(context) => const  Navbar(),
      'Saturday'   :(context) => const Saturday(),
      'Friday'     :(context) => const Friday(),
      'Sunday'     :(context) => const Sunday(),
      'Monday'     :(context) => const Monday(),
      'Tuesday'    :(context) => const Tuesday(),
      'Wednesday'  :(context) => const Wednesday(),
      'Thursday'   :(context) => const Thursday(),
      },
      initialRoute: 'Navbar',
    );
  }
}
    
   
     

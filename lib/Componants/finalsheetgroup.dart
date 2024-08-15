import 'package:daily_math/Componants/coustmform.dart';
import 'package:daily_math/cubits/cubit/groupcubt_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({
    super.key,
  });
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? title, suptitle, stime;
  bool isload = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GroupcubtCubit(),
      child: SingleChildScrollView(
        child: BlocListener<GroupcubtCubit, GroupcubtState>(
          listener: (context, state) {
            if (state is Groupfaieldd) {
              print('faild ${state.errormassage}');
            }
            if (state is Groupsucssesd) {
              Navigator.pop(context);
            }
          },
          child:const Coustmform()
          
        ),
      ),
    );
  }
}

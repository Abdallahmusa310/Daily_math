// ignore_for_file: avoid_print

import 'package:daily_math/Componants/form_sheet_one.dart';
import 'package:daily_math/cubits/cubit/groups_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Addgroubsheet extends StatefulWidget {
const  Addgroubsheet({super.key});
  @override
  State<Addgroubsheet> createState() => _AddgroubsheetState();
}
class _AddgroubsheetState extends State<Addgroubsheet> {
  bool isloading =false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroupsCubit, GroupsState>(
      listener: (context, state) {
        if (state is Groupsfaield) {
        print('Failed ${state.errormassage}');
        }
      },
      builder: (context, state) {
        return const Creategroupsheet();
      },
    );
  }
}

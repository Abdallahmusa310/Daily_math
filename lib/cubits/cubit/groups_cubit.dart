// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:daily_math/Componants/constans.dart';
import 'package:daily_math/models/card_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'groups_state.dart';

class GroupsCubit extends Cubit<GroupsState> {
  GroupsCubit() : super(GroupsInitial());
  addgroup(Cardmodel group) async{
    emit(Groupsloading());
     try {
  var groupbox=Hive.box(kgroupbox);
  emit(Groupssucsses());
    await  groupbox.add(group);
}  catch (e) {
  Groupsfaield(e.toString());

  
}
    

  }
}

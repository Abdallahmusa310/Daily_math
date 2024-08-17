// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:daily_math/models/card_model.dart';
import 'package:meta/meta.dart';
part 'groups_state.dart';
class GroupsCubit extends Cubit<GroupsState> {
  GroupsCubit() : super(GroupsInitial());
  addgroup(Cardmodel group) async{
    emit(Groupsloading());
     try {
    emit(Groupssucsses());
}  catch (e) {
    emit(Groupsfaield(e.toString())); 

  
}
    

  }
}

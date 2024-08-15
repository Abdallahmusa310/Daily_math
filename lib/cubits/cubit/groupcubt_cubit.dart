import 'package:daily_math/models/groups_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'groupcubt_state.dart';

class GroupcubtCubit extends Cubit<GroupcubtState> {
  GroupcubtCubit() : super(GroupcubtInitial());
  addgroup(GroupModel group) async{
    emit(Groupload());
     try {
    emit(Groupsucssesd());
}  catch (e) {
    emit(Groupfaieldd(e.toString())); 

  
}
    

  }
}

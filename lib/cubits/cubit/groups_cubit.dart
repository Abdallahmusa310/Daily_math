import 'package:bloc/bloc.dart';
import 'package:daily_math/models/card_model.dart';
import 'package:meta/meta.dart';

part 'groups_state.dart';

class GroupsCubit extends Cubit<GroupsState> {
  GroupsCubit() : super(GroupsInitial());

  addgroup(Cardmodel group){

  }
}

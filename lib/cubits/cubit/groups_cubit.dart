import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'groups_state.dart';

class GroupsCubit extends Cubit<GroupsState> {
  GroupsCubit() : super(GroupsInitial());
}

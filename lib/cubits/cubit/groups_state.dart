part of 'groups_cubit.dart';

@immutable
abstract class GroupsState {}

 class GroupsInitial extends GroupsState {}
 class Groupsloading extends GroupsState {}
 class Groupssucsses extends GroupsState {}
 class Groupsfaield extends GroupsState  {

  final String errormassage;

  Groupsfaield(this.errormassage);
 }

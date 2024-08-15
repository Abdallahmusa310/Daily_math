part of 'groupcubt_cubit.dart';

@immutable
sealed class GroupcubtState {}

final class GroupcubtInitial extends GroupcubtState {}
 class GroupInitial extends GroupcubtState{}
 class Groupload extends GroupcubtState{}
 class Groupsucssesd extends GroupcubtState{}
 class Groupfaieldd extends  GroupcubtState  {

  final String errormassage;

  Groupfaieldd(this.errormassage);
 }

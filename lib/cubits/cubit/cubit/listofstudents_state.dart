part of 'listofstudents_cubit.dart';

@immutable
sealed class ListofstudentsState {}

 class ListofstudentsInitial extends ListofstudentsState {}
 class Listofstudentsload extends ListofstudentsState{}
 class Listofstudentssucssesd extends ListofstudentsState{
  final List<Studentmodel>students;

  Listofstudentssucssesd(this.students);
 }
 class Listofstudentsfaield extends  ListofstudentsState {

  final String errormassage;

  Listofstudentsfaield(this.errormassage);
 }

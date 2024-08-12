part of 'student_cubit.dart';

@immutable
abstract class StudentState {}

class StudentInitial extends StudentState {}
class Studentloading extends StudentState {}
class Studentsucsses extends StudentState {}
class Studentfaield  extends StudentState  {

  final String errormassage;

  Studentfaield(this.errormassage);
 }


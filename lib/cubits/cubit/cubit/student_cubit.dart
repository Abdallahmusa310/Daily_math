// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:meta/meta.dart';

part 'student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentInitial());
  addstudent(Studentmodel student)async{
    emit(Studentloading());
    try {
  emit(Studentsucsses());
} catch (e) {
   emit(Studentfaield(e.toString())); 
  
}
  }
}

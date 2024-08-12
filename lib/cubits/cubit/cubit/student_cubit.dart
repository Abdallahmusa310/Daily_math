// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:daily_math/Componants/constans.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'student_state.dart';

class StudentCubit extends Cubit<StudentState> {
  StudentCubit() : super(StudentInitial());
  addstudent(Studentmodel student)async{
    emit(Studentloading());
    try {
  var studentbox=Hive.box(kgroupbox);
 emit(Studentsucsses());
  await  studentbox.add(student);
} catch (e) {
  Studentfaield(e.toString());
  
}
  }
}

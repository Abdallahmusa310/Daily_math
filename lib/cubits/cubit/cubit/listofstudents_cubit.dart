import 'package:bloc/bloc.dart';
import 'package:daily_math/Componants/constans.dart';
import 'package:daily_math/models/student_model.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

part 'listofstudents_state.dart';

class ListofstudentsCubit extends Cubit<ListofstudentsState> {
  ListofstudentsCubit() : super(ListofstudentsInitial());

  fetchallstudents()async {
     try {
      var studentbox =Hive.box<Studentmodel>(kgroupbox);
      List<Studentmodel> student =studentbox.values.toList();

    emit(Listofstudentssucssesd(student));
}  catch (e) {
    emit(Listofstudentsfaield(e.toString())); 

  
}
  }
}

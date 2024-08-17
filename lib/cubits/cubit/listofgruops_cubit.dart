import 'package:bloc/bloc.dart';
import 'package:daily_math/Componants/constans.dart';
import 'package:daily_math/models/groups_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'listofgruops_state.dart';

class ListofgruopsCubit extends Cubit<ListofgruopsState> {
  ListofgruopsCubit() : super(ListofgruopsInitial());
  List<GroupModel>?groups;
  fetchallgroups()async {
      var groupbox =Hive.box<GroupModel>(kgroupbox);
      groups=groupbox.values.toList();
      



  

  }
}

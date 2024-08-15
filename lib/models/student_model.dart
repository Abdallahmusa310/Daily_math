import 'package:hive/hive.dart';
part 'student_model.g.dart';


@HiveType(typeId: 1)
class Studentmodel extends HiveObject
 {
    @HiveType(typeId: 0)
  final String studentname;
    @HiveType(typeId: 1)
  final String parentrhone;
  Studentmodel(
    {required this.studentname,required this.parentrhone}
  );
  
}
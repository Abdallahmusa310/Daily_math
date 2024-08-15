import 'package:hive/hive.dart';
part 'groups_model.g.dart';


@HiveType(typeId: 2)
class GroupModel extends HiveObject
 {
    @HiveType(typeId: 0)
    final String nameofgruop;
    @HiveType(typeId: 1)
    final String gradeofgroup;
    @HiveType(typeId: 2)
    final String starttimeofgroup;
 
  GroupModel({required this.nameofgruop, required this.gradeofgroup, required this.starttimeofgroup});}
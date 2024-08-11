import 'package:hive/hive.dart';
part 'card_model.g.dart';

@HiveType(typeId: 0)
class Cardmodel extends HiveObject {

  @HiveType(typeId: 0)
  final String groupname;
  @HiveType(typeId: 1)
  final String groupgrade;
  @HiveType(typeId: 2)
  final String grouptime;


  Cardmodel({required this.groupname,required this.groupgrade, required this.grouptime});
  
}
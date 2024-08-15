// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroupModelAdapter extends TypeAdapter<GroupModel> {
  @override
  final int typeId = 2;

  @override
  GroupModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GroupModel(
      nameofgruop:fields[0] as String,
      gradeofgroup:fields[1] as String,
      starttimeofgroup:fields[2] as String
    );
  }

  @override
  void write(BinaryWriter writer, GroupModel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardmodelAdapter extends TypeAdapter<Cardmodel> {
  @override
  final int typeId = 0;

  @override
  Cardmodel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cardmodel(
      groupname: fields[0] as String,
      groupgrade: fields[1] as String,
      grouptime: fields[2] as String
      
    );
  }

  @override
  void write(BinaryWriter writer, Cardmodel obj) {
    writer.writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardmodelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

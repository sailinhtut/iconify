// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'icon.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DataIconAdapter extends TypeAdapter<DataIcon> {
  @override
  final int typeId = 0;

  @override
  DataIcon read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataIcon(
      codePoint: fields[0] as int,
      fontFamily: fields[1] as String?,
      fontPackage: fields[2] as String?,
      name: fields[3] as String?,
      package: fields[4] as String?,
      version: fields[5] as String?,
      code: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, DataIcon obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.codePoint)
      ..writeByte(1)
      ..write(obj.fontFamily)
      ..writeByte(2)
      ..write(obj.fontPackage)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.package)
      ..writeByte(5)
      ..write(obj.version)
      ..writeByte(6)
      ..write(obj.code);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataIconAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

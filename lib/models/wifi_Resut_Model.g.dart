// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wifi_Resut_Model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WifiResultModelAdapter extends TypeAdapter<WifiResultModel> {
  @override
  final int typeId = 0;

  @override
  WifiResultModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WifiResultModel(
      testDate: fields[0] as DateTime?,
      ping: fields[1] as String?,
      dowoloadSpeed: fields[2] as String?,
      uploadSpeed: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, WifiResultModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.testDate)
      ..writeByte(1)
      ..write(obj.ping)
      ..writeByte(2)
      ..write(obj.dowoloadSpeed)
      ..writeByte(3)
      ..write(obj.uploadSpeed);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WifiResultModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

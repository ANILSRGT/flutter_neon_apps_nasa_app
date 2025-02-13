// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nasa_library_item_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NasaLibraryItemDataModelAdapter
    extends TypeAdapter<NasaLibraryItemDataModel> {
  @override
  final int typeId = 1;

  @override
  NasaLibraryItemDataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NasaLibraryItemDataModel(
      center: fields[0] as String?,
      dateCreated: fields[1] as DateTime?,
      description: fields[2] as String?,
      keywords: (fields[3] as List?)?.cast<String>(),
      location: fields[4] as String?,
      mediaType: fields[5] as String?,
      nasaId: fields[6] as String?,
      photographer: fields[7] as String?,
      title: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NasaLibraryItemDataModel obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.center)
      ..writeByte(1)
      ..write(obj.dateCreated)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.keywords)
      ..writeByte(4)
      ..write(obj.location)
      ..writeByte(5)
      ..write(obj.mediaType)
      ..writeByte(6)
      ..write(obj.nasaId)
      ..writeByte(7)
      ..write(obj.photographer)
      ..writeByte(8)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NasaLibraryItemDataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nasa_library_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NasaLibraryItemModelAdapter extends TypeAdapter<NasaLibraryItemModel> {
  @override
  final int typeId = 0;

  @override
  NasaLibraryItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NasaLibraryItemModel(
      data: fields[0] as NasaLibraryItemDataModel?,
      libraryCollection: (fields[1] as List?)?.cast<String>(),
      thumbnailUrl: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NasaLibraryItemModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.data)
      ..writeByte(1)
      ..write(obj.libraryCollection)
      ..writeByte(2)
      ..write(obj.thumbnailUrl);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NasaLibraryItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

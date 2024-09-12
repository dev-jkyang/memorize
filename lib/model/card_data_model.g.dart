// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_data_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DepthAdapter extends TypeAdapter<Depth> {
  @override
  final int typeId = 0;

  @override
  Depth read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Depth.main;
      case 1:
        return Depth.sub;
      default:
        return Depth.main;
    }
  }

  @override
  void write(BinaryWriter writer, Depth obj) {
    switch (obj) {
      case Depth.main:
        writer.writeByte(0);
        break;
      case Depth.sub:
        writer.writeByte(1);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DepthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CardModelAdapter extends TypeAdapter<_$CardModelImpl> {
  @override
  final int typeId = 1;

  @override
  _$CardModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CardModelImpl(
      id: fields[0] as String,
      keyword: fields[1] as String,
      message1: fields[2] as String,
      timeStamp: fields[3] as int,
      message2: fields[4] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$CardModelImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.keyword)
      ..writeByte(2)
      ..write(obj.message1)
      ..writeByte(3)
      ..write(obj.timeStamp)
      ..writeByte(4)
      ..write(obj.message2);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChildGroupAdapter extends TypeAdapter<_$ChildGroupImpl> {
  @override
  final int typeId = 2;

  @override
  _$ChildGroupImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ChildGroupImpl(
      id: fields[0] as String,
      depth: fields[1] as Depth,
      title: fields[2] as String,
      keywordList: (fields[3] as List).cast<CardModel>(),
      timeStamp: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$ChildGroupImpl obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.depth)
      ..writeByte(2)
      ..write(obj.title)
      ..writeByte(4)
      ..write(obj.timeStamp)
      ..writeByte(3)
      ..write(obj.keywordList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ParentsGroupAdapter extends TypeAdapter<_$ParentsGroupImpl> {
  @override
  final int typeId = 3;

  @override
  _$ParentsGroupImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$ParentsGroupImpl(
      id: fields[0] as int,
      title: fields[1] as String,
      childList: (fields[2] as List).cast<String>(),
      timeStamp: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$ParentsGroupImpl obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(3)
      ..write(obj.timeStamp)
      ..writeByte(2)
      ..write(obj.childList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ParentsGroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      id: json['id'] as String,
      keyword: json['keyword'] as String,
      message1: json['message1'] as String,
      timeStamp: (json['timeStamp'] as num).toInt(),
      message2: json['message2'] as String?,
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'keyword': instance.keyword,
      'message1': instance.message1,
      'timeStamp': instance.timeStamp,
      'message2': instance.message2,
    };

_$ChildGroupImpl _$$ChildGroupImplFromJson(Map<String, dynamic> json) =>
    _$ChildGroupImpl(
      id: json['id'] as String,
      depth: $enumDecode(_$DepthEnumMap, json['depth']),
      title: json['title'] as String,
      keywordList: (json['keywordList'] as List<dynamic>)
          .map((e) => CardModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      timeStamp: (json['timeStamp'] as num).toInt(),
    );

Map<String, dynamic> _$$ChildGroupImplToJson(_$ChildGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'depth': _$DepthEnumMap[instance.depth]!,
      'title': instance.title,
      'keywordList': instance.keywordList,
      'timeStamp': instance.timeStamp,
    };

const _$DepthEnumMap = {
  Depth.main: 'main',
  Depth.sub: 'sub',
};

_$ParentsGroupImpl _$$ParentsGroupImplFromJson(Map<String, dynamic> json) =>
    _$ParentsGroupImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      childList:
          (json['childList'] as List<dynamic>).map((e) => e as String).toList(),
      timeStamp: (json['timeStamp'] as num).toInt(),
    );

Map<String, dynamic> _$$ParentsGroupImplToJson(_$ParentsGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'childList': instance.childList,
      'timeStamp': instance.timeStamp,
    };

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'card_data_model.freezed.dart';
part 'card_data_model.g.dart';

Uuid uuid = const Uuid();

@HiveType(typeId: 0)
enum Depth {
  @HiveField(0)
  main,
  @HiveField(1)
  sub,
}

@freezed
class CardModel with _$CardModel {
  @HiveType(typeId: 1, adapterName: 'CardModelAdapter')
  const factory CardModel({
    @HiveField(0) required String id,
    @HiveField(1) required String keyword,
    @HiveField(2) required String message1,
    @HiveField(3) required int timeStamp,
    @HiveField(4) String? message2,
  }) = _CardModel;

  factory CardModel.fromJson(Map<String, dynamic> json) =>
      _$CardModelFromJson(json);

  factory CardModel.add({
    required String keyword,
    required String message1,
    String? message2,
  }) {
    return CardModel(
        id: uuid.v4(),
        keyword: keyword,
        message1: message1,
        message2: message2 ?? '',
        timeStamp: DateTime.now().millisecondsSinceEpoch);
  }
}

@freezed
class ChildGroup with _$ChildGroup {
  @HiveType(typeId: 2, adapterName: 'ChildGroupAdapter')
  const factory ChildGroup({
    @HiveField(0) required String id,
    @HiveField(1) required Depth depth,
    @HiveField(2) required String title,
    @HiveField(3) required List<CardModel> keywordList,
    @HiveField(4) required int timeStamp,
  }) = _ChildGroup;

  factory ChildGroup.fromJson(Map<String, dynamic> json) =>
      _$ChildGroupFromJson(json);

  factory ChildGroup.add(
      {required Depth depth,
      required String title,
      required List<CardModel> keywordList}) {
    return ChildGroup(
      id: uuid.v4(),
      depth: depth,
      title: title,
      keywordList: keywordList,
      timeStamp: DateTime.now().millisecondsSinceEpoch,
    );
  }

}

@freezed
class ParentsGroup with _$ParentsGroup {
  @HiveType(typeId: 3, adapterName: 'ParentsGroupAdapter')
  const factory ParentsGroup({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required List<String> childList,
    @HiveField(3) required int timeStamp,
  }) = _ParentsGroup;

  factory ParentsGroup.fromJson(Map<String, dynamic> json) =>
      _$ParentsGroupFromJson(json);
}

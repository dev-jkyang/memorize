import 'dart:developer';

import 'package:hive/hive.dart';
import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/repositotries/cards_repository.dart';

class HiveRepository extends CardsRepository {
  final Box<ChildGroup> childBox = Hive.box<ChildGroup>('child');

  @override
  Future<List<ChildGroup>> getChild() async {
    try {
      if (childBox.length == 0) return <ChildGroup>[];
      return childBox.values.toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<CardModel>> getCards({required String id}) async {
    try {
      if (childBox.length == 0) return <CardModel>[];
      return childBox.get(id)!.keywordList;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> putCardList({
    required ChildGroup childGroupData,
  }) async {
    try {
      await childBox.put(childGroupData.id, childGroupData);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addCardList(
      {required String id, required List<CardModel> list}) async {
    try {
      final group = childBox.get(id);
      final oldList = group!.keywordList;
      final newList = [...oldList, ...list];

      await childBox.put(id, group.copyWith(keywordList: newList));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> addCard({required CardModel card}) async {
    try {} catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteCard({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<void> updateCard({required String id}) {
    throw UnimplementedError();
  }
}

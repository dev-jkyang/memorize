import '../model/card_data_model.dart';

abstract class CardsRepository {
  Future<List<ChildGroup>> getChild();
  Future<List<CardModel>> getCards({required String id});
  Future<void> putCardList({required ChildGroup childGroupData});
  Future<void> addCardList({required String id, required List<CardModel> list});
  Future<void> addCard({required CardModel card});
  Future<void> updateCard({required String id});
  Future<void> deleteCard({required String id});
}
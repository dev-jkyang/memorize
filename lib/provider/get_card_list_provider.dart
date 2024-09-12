import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/repositotries/provider/cards_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_card_list_provider.g.dart';

@riverpod
class GetCardList extends _$GetCardList {
  @override
  FutureOr<List<CardModel>> build({required String id}) {
    return _getCardList(id: id);
  }

  Future<List<CardModel>> _getCardList({required String id}) async {
    return ref.read(cardsRepositoryProvider).getCards(id: id);
  }

  //add, update, delete
}

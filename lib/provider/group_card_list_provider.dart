import 'package:memorize/model/card_data_model.dart';
import 'package:memorize/repositotries/provider/cards_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'group_card_list_provider.g.dart';

@riverpod
class GroupCardList extends _$GroupCardList {
  @override
  FutureOr<List<CardModel>> build({required String id}) {
    return _getCardList(id: id);
  }

  Future<List<CardModel>> _getCardList({required String id}) async {
    return ref.read(cardsRepositoryProvider).getCards(id: id);
  }

  //add, update, delete
  Future<void> addCardList({required List<CardModel> list}) async {
    state = const AsyncLoading();
    await ref.read(cardsRepositoryProvider).addCardList(id: id, list: list);
    state = await AsyncValue.guard(() async {
      return [...state.value!, ...list];
    });
  }

  Future<void> shuffleCardList() async {
    state = const AsyncLoading();
    final shuffleList = <CardModel>[];
    for (CardModel element in state.value!) {
      shuffleList.add(element);
    }
    shuffleList.shuffle();

    state = await AsyncValue.guard(() async {
      return [...shuffleList];
    });
  }
}
